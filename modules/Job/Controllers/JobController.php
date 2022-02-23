<?php
namespace Modules\Job\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\Candidate\Models\Candidate;
use Modules\Candidate\Models\CandidateCvs;
use Modules\Candidate\Models\Category;
use Modules\Job\Events\CandidateApplyJobSubmit;
use Modules\Job\Models\Job;
use Modules\User\Models\User;
use Modules\Company\Models\Company;
use Modules\Job\Models\JobCandidate;
use Modules\Job\Models\JobType;
use Modules\Location\Models\Location;
use Modules\Media\Models\MediaFile;
use Modules\Skill\Models\Skill;
use Illuminate\Support\Facades\Hash;

class JobController extends Controller{

    public function __construct(){

    }

    public function index(Request $request)
    {
        $list = call_user_func([Job::class,'search'],$request);
        $limit_location = 1000;
        $data = [
            'rows'               => $list,
            'list_locations'      => Location::where('status', 'publish')->limit($limit_location)->get()->toTree(),
            'list_categories'      => Category::where('status', 'publish')->get()->toTree(),
            'job_types'      => JobType::where('status', 'publish')->get(),
            'min_max_price' => Job::getMinMaxPrice(),
            "filter"             => $request->query('filter'),
            "seo_meta"           => Job::getSeoMetaForPageList()
        ];
        $view_layouts = ['v1', 'v2', 'v3'];
        $layout = setting_item('jobs_list_layout', 'job-list-v1');
        $demo_layout = $request->get('_layout');
        if(!empty($demo_layout) && in_array($demo_layout, $view_layouts)){
            $layout = 'job-list-'.$demo_layout;
        }
        $data['style'] = $layout;

        return view('Job::frontend.index', $data);
    }

    public function detail(Request $request, $slug)
    {
        $row = Job::with(['location','translations', 'category', 'company', 'company.teamSize', 'jobType', 'skills', 'wishlist'])->where('slug', $slug)->first();

        if(empty($row)){
            abort('404');
        }
        $translation = $row->translateOrOrigin(app()->getLocale());
        $job_related = [];
        $category_id = $row->category_id;
        if (!empty($category_id)) {
            $job_related = Job::with(['location','translations', 'company', 'category', 'jobType'])->where('category_id', $category_id)->where("status","publish")->whereNotIn('id', [$row->id])->take(3)->get();
        }
        $candidate = Auth::check() ? Candidate::with('cvs')->where('id', Auth::id())->first() : false;
        $applied = false;
        if ($candidate){
            $job_candidate = JobCandidate::query()
                ->where('job_id', $row->id)
                ->where('candidate_id', Auth::id())
                ->first();
            if($job_candidate) $applied = true;
        }
        $data = [
            'row' => $row,
            'translation' => $translation,
            'job_related' => $job_related,
            'candidate' => $candidate,
            'applied' => $applied,
            'disable_header_shadow' => true,
            'seo_meta' => $row->getSeoMetaWithTranslation(app()->getLocale(), $translation)
        ];

        $view_layouts = ['v1', 'v2'];
        $layout = setting_item('job_single_layout', 'job-single-v1');
        $demo_layout = $request->get('_layout');
        if(!empty($demo_layout) && in_array($demo_layout, $view_layouts)){
            $layout = 'job-single-'.$demo_layout;
        }
        $data['style'] = $layout;

        $this->setActiveMenu($row);
        return view('Job::frontend.detail', $data);
    }

    public function applyJob(Request $request){
        $cv_file = $request->file('cv_file');
        $apply_cv_id = $request->input('apply_cv_id');
        $message = $request->input('message');
        $job_id = $request->input('job_id');
        $company_id = $request->input('company_id');
        if(empty($apply_cv_id) && empty($cv_file)){
            return $this->sendError(__("Choose a cv"));
        }

        //Save Cv
        if(!empty($cv_file)){
            $file_id = MediaFile::saveUploadFile($cv_file);
            if(empty($file_id)){
                return $this->sendError(__("An error occurred!"));
            }
            $candidateCv = new CandidateCvs();
            $candidateCv->file_id = $file_id;
            $candidateCv->origin_id = Auth::id();
            $candidateCv->save();
            $apply_cv_id = $candidateCv->id;
        }

        $row = JobCandidate::query()
            ->where('job_id', $job_id)
            ->where('candidate_id', Auth::id())
            ->first();
        if ($row){
            return $this->sendError(__("You have applied this job already"));
        }
        $row = new JobCandidate();
        $row->job_id = $job_id;
        $row->candidate_id = Auth::id();
        $row->cv_id = $apply_cv_id;
        $row->message = $message;
        $row->status = 'pending';
        $row->company_id = $company_id;
        $row->save();
        $row->load('jobInfo', 'jobInfo.user', 'candidateInfo', 'company', 'company.getAuthor');
        //
        event(new CandidateApplyJobSubmit($row));

        return $this->sendSuccess([
            'message' => __("Apply successfully!")
        ]);
    }

    public function categoryIndex(Request $request, $slug){
        $cat = Category::where('slug', $slug)->first();
        if (empty($cat)) {
            return redirect(route('job.search'));
        }
        $translation = $cat->translateOrOrigin(app()->getLocale());

        $request->merge(['category', $cat->id]);
        $request->category = $cat->id;
        $list = call_user_func([Job::class,'search'],$request);
        $limit_location = 1000;
        $data = [
            'rows'               => $list,
            'list_locations'      => Location::where('status', 'publish')->limit($limit_location)->get()->toTree(),
            'list_categories'      => Category::where('status', 'publish')->get()->toTree(),
            'category' => $cat,
            'job_types'      => JobType::where('status', 'publish')->get(),
            'min_max_price' => Job::getMinMaxPrice(),
            "filter"             => $request->query('filter'),
            "seo_meta"           => $cat->getSeoMetaWithTranslation(app()->getLocale(), $translation)
        ];
        $layout = 'job-list-v1';
        $data['style'] = $layout;

        return view('Job::frontend.index', $data);
    }

    public function locationIndex(Request $request, $slug){
        $location = Location::query()->where('slug', $slug)->first();
        if (empty($location)) {
            return redirect(route('job.search'));
        }
        $translation = $location->translateOrOrigin(app()->getLocale());

        $request->merge(['location', $location->id]);
        $request->location = $location->id;
        $list = call_user_func([Job::class,'search'],$request);
        $limit_location = 1000;
        $data = [
            'rows'               => $list,
            'list_locations'      => Location::where('status', 'publish')->limit($limit_location)->get()->toTree(),
            'list_categories'      => Category::where('status', 'publish')->get()->toTree(),
            'location' => $location,
            'job_types'      => JobType::where('status', 'publish')->get(),
            'min_max_price' => Job::getMinMaxPrice(),
            "filter"             => $request->query('filter'),
            "seo_meta"           => $location->getSeoMetaWithTranslation(app()->getLocale(), $translation)
        ];
        $layout = 'job-list-v1';
        $data['style'] = $layout;

        return view('Job::frontend.index', $data);
    }
    public function categoryLocationIndex(Request $request, $cat_slug, $location_slug){
        $cat = Category::where('slug', $cat_slug)->first();
        $location = Location::query()->where('slug', $location_slug)->first();
        if (empty($cat) || empty($location)) {
            return redirect(route('job.search'));
        }
        $translation = $cat->translateOrOrigin(app()->getLocale());

        $request->merge(['category', $cat->id]);
        $request->category = $cat->id;
        $request->merge(['location', $location->id]);
        $request->location = $location->id;

        $list = call_user_func([Job::class,'search'],$request);
        $limit_location = 1000;
        $data = [
            'rows'               => $list,
            'list_locations'      => Location::where('status', 'publish')->limit($limit_location)->get()->toTree(),
            'list_categories'      => Category::where('status', 'publish')->get()->toTree(),
            'category' => $cat,
            'location' => $location,
            'job_types'      => JobType::where('status', 'publish')->get(),
            'min_max_price' => Job::getMinMaxPrice(),
            "filter"             => $request->query('filter'),
            "seo_meta"           => $cat->getSeoMetaWithTranslation(app()->getLocale(), $translation)
        ];
        $layout = 'job-list-v1';
        $data['style'] = $layout;

        return view('Job::frontend.index', $data);
    }
    
    public function create(Request $request){
           $data = [
            'categories'        => Category::get()->toTree(),
            'job_types' => JobType::query()->where('status', 'publish')->get(),
            'job_skills' => Skill::query()->where('status', 'publish')->get(),
            'job_location'     => Location::where('status', 'publish')->get()->toTree()
            ];
           return view('Job::frontend.post-job', $data);  
    }
    
    public function store(Request $request){
        $job = new Job();
        if(!Auth::user()){
            $user = new User();
            $user->name = $request->user_name;
            $user->email = $request->user_email;
            $user->password = Hash::make('admin123');
            $user->role_id = 3;
            $user->save();
        }
        if(!Auth::user()){
            $company_logo =     MediaFile::saveUploadFile($request->company_logo);
            $company = new Company();
            $company->name = $request->company_name;
            $company->about = $request->company_desc;
            $company->owner_id = $user->id;
            $company->create_user = $user->id ;
            $company->avatar_id = $company_logo;
            $company->save();
            
            $company_id = $company->id;
        } 
        else{
            $company_id = $request->company;
        }
        
        
       $job_image =  MediaFile::saveUploadFile($request->job_image); 
        $job = new Job();
        $job->title = $request->title;
        $job->slug = strtolower( str_replace('', '-',$request->title));
        $job->thumbnail_id= $job_image;
        $job->content= $request->content;
        $job->category_id = $request->catid;
        $job->location_id = $request->city;
        $job->company_id = $company_id;
        $job->create_user =$user->id;
        $job->job_type_id = $request->job_type;
        $job->salary_min = $request->salary_min;
        $job->salary_max = $request->salary_max;
        $job->salary_type = $request->salary_type;
        $job->negotiable = ($request->negotiable)?1: 0;
        $job->minimum_wage = ($request->minimum_wage)? 1: 0;
        $job->job_locations = $request->workLocations;
        $job->phone = $request->phone;
        $job->hide_phone = ($request->hide_phone)? 1: 0;
        $job->application_url = $request->application_url;
        $job->tag = $request->tags;
        if($request->askQuestion){
            $question = implode('|', $request->question);
            $job->questions = $question;
    
        }
        if($request->make_premium == 1){
            
          $job->is_featured = ($request->featured)? 1: 0;
          $job->is_highlight = ($request->highlight)? 1: 0;
          $job->is_urgent = ($request->urgent)? 1: 0;
            
        }
        
        if($request->addText){
            $job->extra_text = "We are committed to ensuring that our recruitment processes are barrier-free and as inclusive as possible for everyone. We particularly welcome applications from disabled applicants. This includes making adjustments for people who have a disability or long-term health condition. If you would like us to do anything differently during the application process, such as apply in an alternative format, please let us know before you apply or contact our hiring manager through the details provided above.";
        }
        $job->status="pending";
        $job->save();
        
        return redirect()->back();
    }
    

}
