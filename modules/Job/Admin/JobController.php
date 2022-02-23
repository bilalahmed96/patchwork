<?php
namespace Modules\Job\Admin;

use App\Notifications\PrivateChannelServices;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Modules\AdminController;
use Modules\Candidate\Models\Category;
use Modules\Job\Events\EmployerChangeApplicantsStatus;
use Modules\Job\Exports\ApplicantsExport;
use Modules\Job\Models\Job;
use Modules\Job\Models\JobCandidate;
use Modules\Job\Models\AlertNotification;
use Modules\Job\Models\JobTranslation;
use Modules\Job\Models\JobType;
use Modules\Language\Models\Language;
use Modules\Location\Models\Location;
use Modules\Skill\Models\Skill;
use Modules\Company\Models\Company;

class JobController extends AdminController
{
    public function __construct()
    {
        $this->setActiveMenu('admin/module/job');
        parent::__construct();
    }

    public function index(Request $request)
    {
        $this->checkPermission('job_manage');
        $job_query = Job::query()->with(['location', 'category', 'company'])->orderBy('id', 'desc');
        $title = $request->query('s');
        $cate = $request->query('category_id');
        $company_id = $request->query('company_id');
        if ($cate) {
            $job_query->where('category_id', $cate);
        }
        if($company_id){
            $job_query->where('company_id', $company_id);
        }
        if ($title) {
            $job_query->where('title', 'LIKE', '%' . $title . '%');
            $job_query->orderBy('title', 'asc');
        }
        if(!is_admin()){
            $company_id = Auth::user()->company->id ?? '';
            $job_query->where('company_id', $company_id);
        }
        
        $data = [
            'rows'        => $job_query->paginate(20),
            'breadcrumbs' => [
                [
                    'name' => __('Job'),
                    'url'  => 'admin/module/job'
                ],
                [
                    'name'  => __('All'),
                    'class' => 'active'
                ],
            ],
            "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'title' => 'My Jobs',
            'page_title'=>__("Jobs Management")
        ];
        if(is_admin()){
            return view('Job::admin.job.index', $data);
        }
        else{
            return view('Job::admin.job.jobs', $data);     
        }
    }

    public function create(Request $request)
    {
        $this->checkPermission('job_manage');
        if(!is_admin() and !auth()->user()->checkJobPlan()){
            return redirect(route('user.plan'));
        }

        $row = new Job();
        $row->fill([
            'status' => 'publish',
        ]);
        $data = [
            'categories'        => Category::get()->toTree(),
            'job_types' => JobType::query()->where('status', 'publish')->get(),
            'job_skills' => Skill::query()->where('status', 'publish')->get(),
            'job_location'     => Location::where('status', 'publish')->get()->toTree(),
            'row'         => $row,
            'breadcrumbs' => [
                [
                    'name' => __('Job'),
                    'url'  => 'admin/module/job'
                ],
                [
                    'name'  => __('Add Job'),
                    'class' => 'active'
                ],
            ],
            'translation' => new JobTranslation()
        ];
        return view('Job::admin.job.detail', $data);
    }

    public function edit(Request $request, $id)
    {
        $this->checkPermission('job_manage');

        $row = Job::with('skills')->find($id);

        $translation = $row->translateOrOrigin($request->query('lang'));
        $company_id = Auth::user()->company->id ?? '';

        if (empty($row)) {
            return redirect(route('job.admin.index'));
        }elseif(!is_admin() && $company_id != $row->company_id){
            return redirect(route('job.admin.index'));
        }

        $data = [
            'row'  => $row,
            'translation'  => $translation,
            'categories' => Category::query()->where('status', 'publish')->get()->toTree(),
            'job_location' => Location::query()->where('status', 'publish')->get()->toTree(),
            'job_types' => JobType::query()->where('status', 'publish')->get(),
            'job_skills' => Skill::query()->where('status', 'publish')->get(),
            'enable_multi_lang'=>true,
            'breadcrumbs' => [
                [
                    'name' => __('Job'),
                    'url'  => 'admin/module/job'
                ],
                [
                    'name'  => $row->title,
                    'class' => 'active'
                ],
            ],
        ];
        return view('Job::admin.job.detail', $data);
    }

    public function store(Request $request, $id){
        $this->checkPermission('job_manage');

        if(!empty($request->input('salary_max')) && (int)$request->input('salary_max') > 0 && !empty($request->input('salary_min')) && (int)$request->input('salary_min') > 0) {
            $check = Validator::make($request->input(), [
                'salary_max' => 'required|gt:salary_min'
            ]);
            if (!$check->validated()) {
                return back()->withInput($request->input());
            }
        }

        if(!is_admin() and !auth()->user()->checkJobPlan()){
            return redirect(route('user.plan'));
        }

        if($id>0){
            $row = Job::find($id);
            if (empty($row)) {
                return redirect(route('job.admin.index'));
            }
        }else{

            $row = new Job();
            $row->status = "publish";
            if(! empty($request->question)){
            $row->questions = implode('|', $request->question);
            }
        }
        $input = $request->input();
        $attr = [
            'title',
            'content',
            'category_id',
            'thumbnail_id',
            'location_id',
            'company_id',
            'job_type_id',
            'expiration_date',
            'hours',
            'hours_type',
            'salary_min',
            'salary_max',
            'salary_type',
            'gender',
            'map_lat',
            'map_lng',
            'map_zoom',
            'experience',
            'is_featured',
            'is_urgent',
             'is_highlight',
            'status',
            'create_user',
            'apply_type',
            'apply_link',
            'apply_email',
            'wage_agreement',
            'negotiable',
            'minimum_wage',
            'job_locations'
            
        ];
        if (!empty($input['wage_agreement'])){
            $input['salary_min'] = 0;
            $input['salary_max'] = 0;
        }
        $row->fillByAttr($attr, $input);
        if($request->input('slug')){
            $row->slug = $request->input('slug');
        }
        if(empty($request->input('create_user'))){
            $row->create_user = Auth::id();
        }
        if(empty($request->input('company_id')) && !is_admin()){
            $user = User::with('company')->find(Auth::id());
            if(!empty($user->company)){
                $row->company_id = $user->company->id;
            }
        }

        $res = $row->saveOriginOrTranslation($request->query('lang'),true);
        $row->skills()->sync($request->input('job_skills') ?? []);

        if ($res) {
            if($id > 0 ){
                return back()->with('success',  __('Job updated') );
            }else{
                return redirect(route('job.admin.edit',$row->id))->with('success', __('Job created') );
            }
        }
    }

    public function bulkEdit(Request $request)
    {
        if(!is_admin() and !auth()->user()->checkJobPlan()){
            return redirect(route('user.plan'));
        }
        $this->checkPermission('job_manage');
        $ids = $request->input('ids');
        $action = $request->input('action');
        if (empty($ids) or !is_array($ids)) {
            return redirect()->back()->with('error', __('No items selected!'));
        }
        if (empty($action)) {
            return redirect()->back()->with('error', __('Please select an action!'));
        }
        if ($action == "delete") {
            foreach ($ids as $id) {
                $query = Job::where("id", $id);
                if (!$this->hasPermission('job_manage_others')) {
                    $company_id = Auth::user()->company->id ?? '';
                    $query->where('company_id', $company_id);
                    $this->checkPermission('job_manage');
                }
                $query->first();
                if(!empty($query)){
                    $query->delete();
                }
            }
        } else {
            foreach ($ids as $id) {
                $query = Job::where("id", $id);
                if (!$this->hasPermission('job_manage_others')) {
                    $company_id = Auth::user()->company->id ?? '';
                    $query->where('company_id', $company_id);
                    $this->checkPermission('job_manage');
                }
                $query->update(['status' => $action]);
            }
        }
        return redirect()->back()->with('success', __('Update success!'));
    }

    public function allApplicants(Request $request){
        $this->setActiveMenu('admin/module/job/all-applicants');
        $candidate_id = $request->query('candidate_id');
        $rows = JobCandidate::with(['jobInfo', 'candidateInfo', 'cvInfo', 'company', 'company.getAuthor'])
            ->whereHas('jobInfo', function ($q) use($request){
                $job_id = $request->query('job_id');
                $company_id = $request->query('company_id');
                if (!$this->hasPermission('job_manage_others')) {
                    $company_id = Auth::user()->company->id ?? '';
                    $q->where('company_id', $company_id);
                }
                if( $company_id && $this->hasPermission('job_manage_others')){
                    $q->where('company_id', $company_id);
                }
                if($job_id){
                    $q->where("id", $job_id);
                }
            });

        if( $candidate_id && $this->hasPermission('job_manage_others')){
            $rows->where('candidate_id', $candidate_id);
        }

        $rows = $rows->orderBy('id', 'desc')
            ->paginate(20);
        $data = [
            'rows' => $rows
        ];
        return view('Job::admin.job.all-applicants', $data);
    }

    public function applicantsChangeStatus($status, $id){
        $this->checkPermission('job_manage');

        $row = JobCandidate::with('jobInfo', 'jobInfo.user', 'candidateInfo', 'company', 'company.getAuthor')
            ->where('id', $id);

        if (!$this->hasPermission('job_manage_others')) {
            $row = $row->whereHas('jobInfo', function ($q){
                $company_id = Auth::user()->company->id ?? '';
                $q->where('company_id', $company_id);
            });
        };
        $row = $row->first();
        if (empty($row)){
            return redirect()->back()->with('error', __('Item not found!'));
        }
        $old_status = $row->status;
        if($status != 'approved' && $status != 'rejected'){
            return redirect()->back()->with('error', __('Status unavailable'));
        }
        $row->status = $status;
        $row->save();
        //Send Notify and email
        if($old_status != $status) {
            event(new EmployerChangeApplicantsStatus($row));
        }

        return redirect()->back()->with('success', __('Update success!'));
    }

    public function applicantsBulkEdit(Request $request){
        $this->checkPermission('job_manage');
        $ids = $request->input('ids');
        $action = $request->input('action');
        if (empty($ids) or !is_array($ids)) {
            return redirect()->back()->with('error', __('No items selected!'));
        }
        if (empty($action)) {
            return redirect()->back()->with('error', __('Please select an action!'));
        }
        foreach ($ids as $id) {
            $query = JobCandidate::with('jobInfo', 'jobInfo.user', 'candidateInfo', 'company', 'company.getAuthor')->where('id', $id);
            if (!$this->hasPermission('job_manage_others')) {
                $query = $query->whereHas('jobInfo', function ($q){
                    $company_id = Auth::user()->company->id ?? '';
                    $q->where('company_id', $company_id);
                });
            }
            $query = $query->first();
            $old_status = $query->status;
            $query->status = $action;
            $query->save();
            //Send Notify and Email
            if($old_status != $action) {
                event(new EmployerChangeApplicantsStatus($query));
            }

        }
        return redirect()->back()->with('success', __('Update success!'));
    }

    public function applicantsExport(){
        return (new ApplicantsExport())->download('applicants-' . date('M-d-Y') . '.xlsx');
    }

    public function getForSelect2(Request $request)
    {
        $q = $request->query('q');
        $query = Job::select('id', 'title as text')->where("status","publish");
        if ($q) {
            $query->where('title', 'like', '%' . $q . '%');
        }
        if(!is_admin()){
            $company_id = Auth::user()->company->id ?? '';
            $query->where('company_id', $company_id);
        }
        $res = $query->orderBy('id', 'desc')->limit(20)->get();
        return response()->json([
            'results' => $res
        ]);
    }
    
    public function delete($id){
        $data = Job::find($id);
        $data->delete();
        
        return back()->with('success',  __('Job updated') );
    }
    
            public function saved_jobs(Request $request){
           
          
        $job_query = Job::query()->with(['location', 'category', 'company'])->orderBy('id', 'desc');
        $title = $request->query('s');
        $cate = $request->query('category_id');
        $company_id = $request->query('company_id');
        if ($cate) {
            $job_query->where('category_id', $cate);
        }
        if($company_id){
            $job_query->where('company_id', $company_id);
        }
        if ($title) {
            $job_query->where('title', 'LIKE', '%' . $title . '%');
            $job_query->orderBy('title', 'asc');
        }
        // if(!is_admin()){
        //     $company_id = Auth::user()->company->id ?? '';
        //     $job_query->where('company_id', $company_id);
        // }
        
        $data = [
            'rows'        => $job_query->paginate(5),
            'title'       => 'Saved Jobs',
            'icon'        => 'fa-heart',
           
            "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'page_title'=>__("Saved Jobs")
        ];
       
            return view('Job::admin.job.saved-jobs', $data);     
        
    }
    
    public function applied_jobs(Request $request){
          
        $job_query = Job::query()->with(['location', 'category', 'company'])->orderBy('id', 'desc');
        $title = $request->query('s');
        $cate = $request->query('category_id');
        $company_id = $request->query('company_id');
        if ($cate) {
            $job_query->where('category_id', $cate);
        }
        if($company_id){
            $job_query->where('company_id', $company_id);
        }
        if ($title) {
            $job_query->where('title', 'LIKE', '%' . $title . '%');
            $job_query->orderBy('title', 'asc');
        }
        // if(!is_admin()){
        //     $company_id = Auth::user()->company->id ?? '';
        //     $job_query->where('company_id', $company_id);
        // }
        
        $data = [
            'rows'        => $job_query->paginate(5),
            'title'       => 'Applied Jobs',
            'icon'        => 'fa-briefcase',
            
            "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'page_title'=>__("Applied Jobs")
        ];
       
            return view('Job::admin.job.saved-jobs', $data);     
        
    }
    
    public function work_history(Request $request){

        
        $data = [
            'rows'        => '',
         
            
            "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'page_title'=>__("Work History")
        ];
       
            return view('Job::admin.job.work-history', $data);    
    }
    public function alerts(Request $request){
          $categories = Category::where('status','=', 'publish')->get();
          
          $data = [
  
            'categories'  => $categories,
            
            "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'page_title'=>__("Job Alerts")
        ];
       
            return view('Job::admin.job.alerts', $data);  
    }
    
    public function alert_submit(Request $request){
        $user = User::where('id', '=', Auth::user()->id)->first();
        $user->notify = ($request->notify && $request->choice)? 1:0;
        $user->save();
        
        
        
        if($request->choice){
            
           
           
            foreach($request->choice as $choice){
                
                $notification = AlertNotification::where('user_id', '=', Auth::user()->id)->where('cat_id' , '=', $choice)->first();
                if(!$notification){
                    $notification = new AlertNotification();
                }
                
                $notification->user_id = Auth::user()->id;
                $notification->user_email = Auth::user()->email;
                $notification->cat_id = $choice;
                $notification->save();
               
            }
        }
        
         return redirect()->back()->with('success', __('Update success!'));
    }
    
    public function pending_jobs(Request $request){
        // $company_id = Auth::user()->company->id ?? '';
        $company_ids = Company::where('owner_id', '=', Auth::user()->id)->get()->pluck('id');
       
        $pending_jobs = Job::query()->with(['location', 'category', 'company'])->where('status', '=', 'pending')->orderBy('id', 'desc')->whereIn('company_id',   $company_ids);
         
            $title = $request->query('s');
         if ($title) {
            $pending_jobs->where('title', 'LIKE', '%' . $title . '%');
            $pending_jobs->orderBy('title', 'asc');
        }
        
       
         $data = [
  
            
            'rows' =>  $pending_jobs->paginate(20),
            "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'title' => 'pending jobs',
            'page_title'=>__("Jobs")
        ];
        
        return view('Job::admin.job.jobs', $data);   
    }
    
    public function expired_jobs(Request $request){
         $company_id = Auth::user()->company->id ?? '';
      
        $pending_jobs = Job::query()->with(['location', 'category', 'company'])->orderBy('id', 'desc')->where('company_id',  '=', $company_id)->where('expiration_date', '<=' ,date('Y-m-d', strtotime('now')));
         
            $title = $request->query('s');
         if ($title) {
            $pending_jobs->where('title', 'LIKE', '%' . $title . '%');
            $pending_jobs->orderBy('title', 'asc');
        }
        
    //   return  json_encode($pending_jobs->get());
         $data = [
  
            
            'rows' =>  $pending_jobs->paginate(20),
            "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'title' => 'Expired jobs',
            'page_title'=>__("Jobs")
        ];
        
        return view('Job::admin.job.jobs', $data);   
    }
}
