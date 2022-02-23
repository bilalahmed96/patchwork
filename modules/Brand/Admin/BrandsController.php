<?php
namespace Modules\Brand\Admin;

use App\Notifications\PrivateChannelServices;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Modules\AdminController;
use Modules\Candidate\Models\Category;
use Modules\Job\Events\EmployerChangeApplicantsStatus;
use Modules\Job\Exports\ApplicantsExport;
use Modules\Brand\Models\Brand;
use Modules\Job\Models\JobCandidate;
use Modules\Job\Models\JobTranslation;
use Modules\Job\Models\JobType;
use Modules\Language\Models\Language;
use Modules\Location\Models\Location;
use Modules\Skill\Models\Skill;

class BrandsController extends AdminController
{
    public function __construct()
    {
        $this->setActiveMenu('admin/module/brand');
        parent::__construct();
    }

    public function index(Request $request)
    {
      
        $brand_query = Brand::orderBy('id', 'desc');
    
        // return $brand_query->paginate(20);
        $data = [
            'rows'        => $brand_query->paginate(20),
            'breadcrumbs' => [
                [
                    'name' => "Our Supportes",
                    'url'  => 'admin/module/brand'
                ],
                [
                    'name'  => __('All'),
                    'class' => 'active'
                ],
            ],
            "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'page_title'=> "Supporters Management"
        ];
        return view('Brand::admin.brand.index', $data);
    }

    public function create(Request $request)
    {
 
       

        $row = new Brand();
        $row->fill([
            'status' => 'publish',
        ]);
        $data = [
          
            'row'         => $row,
            'breadcrumbs' => [
                [
                    'name' => "Our Suporters",
                    'url'  => 'admin/module/job'
                ],
                [
                    'name'  =>  "Add Supporters",
                    'class' => 'active'
                ],
            ],
            // 'translation' => new Translation()
        ];
        return view('Brand::admin.brand.detail', $data);
    }

    public function edit(Request $request, $id)
    {
      

        $row = Brand::find($id);
        // $translation = $row->translateOrOrigin($request->query('lang'));
       

        if (empty($row)) {
            return redirect(route('brand.admin.index'));
        }

        $data = [
            'row'  => $row,
            
            'enable_multi_lang'=>true,
            'breadcrumbs' => [
                [
                    'name' => "our Supporters",
                    'url'  => 'admin/module/brand'
                ],
                [
                    'name'  => $row->title,
                    'class' => 'active'
                ],
            ],
        ];
        return view('Brand::admin.brand.detail', $data);
    }

    public function store(Request $request, $id){
     

       
            $check = Validator::make($request->input(), [
                'name'=>'required',
                'content' => 'required',
                'thumbnail_id' => 'required'
            ]);
            if (!$check->validated()) {
                return back()->withInput($request->input());
            }
        

        // if(!is_admin() and !auth()->user()->checkJobPlan()){
        //     return redirect(route('user.plan'));
        // }

        if($id>0){
            $row = Brand::find($id);
            if (empty($row)) {
                return redirect(route('job.admin.index'));
            }
        }else{

            $row = new Brand();
            $row->status = "publish";
        }
        $input = $request->input();
        $attr = [
          'name',
          'content',
          'image'
          
        ];
      
        $row->fillByAttr($attr, $input);
       
        $res = $row->saveOriginOrTranslation($request->query('lang'),true);
       

        if ($res) {
            if($id > 0 ){
                return back()->with('success',  __('Supporter updated') );
            }else{
                return redirect(route('brand.admin.edit',$row->id))->with('success', "Supporter Created" );
            }
        }
    }

    public function bulkEdit(Request $request)
    {
       
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
                $query = Brand::where("id", $id);
                
                $query->first();
                if(!empty($query)){
                    $query->delete();
                }
            }
        } else {
            foreach ($ids as $id) {
                $query = Brand::where("id", $id);
               
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

    
}
