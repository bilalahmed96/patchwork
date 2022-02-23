<?php
namespace Modules\Candidate\Controllers;

use App\Helpers\ReCaptchaEngine;
use App\Notifications\PrivateChannelServices;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;
use Matrix\Exception;
use Modules\Candidate\Models\CandidateContact;
use Modules\Candidate\Models\CandidateCvs;
use Modules\Candidate\Emails\NotificationCandidateContact;
use Modules\Contact\Models\Contact;
use Modules\FrontendController;
use Modules\Language\Models\Language;
use Modules\Candidate\Models\Candidate;
use Modules\Media\Models\MediaFile;
use Modules\Candidate\Models\Category;
use Modules\Candidate\Models\CandidateTranslation;
use Modules\Location\Models\Location;
use Modules\Skill\Models\Skill;
use Modules\User\Models\User;

class ResumeController extends FrontendController
{


    public function __construct()
    {
        parent::__construct();
    }

    public function index(Request $request)
    {
      $list = CandidateCvs::where('origin_id', '=', Auth::user()->id)->get();
        $data = [
            'rows'               => $list,
            'page_title'        =>'Resumes'
         
        ];
       

        return view('Candidate::frontend.resumes', $data);
    }
    
     public function create(Request $request)
    {
    
        $data = [
            'rows'               => '',
            'page_title'        =>'Resumes'
            
        ];
       

        return view('Candidate::frontend.create', $data);
    }
    
    
    public function store(Request $request){
        $request->validate([
            'name' => 'required',
            'resume' => 'required|mimes:jpg,doc,docx,pdf,rtf,rtx,ppt,pptx,jpeg,bmp'
            ]);
        $file_id = MediaFile::saveUploadFile($request->file('resume'));
        $resume = new CandidateCvs();
        $resume->origin_id = Auth::user()->id;
        $resume->file_id = $file_id;
        $resume->is_default = 1;
        $resume->create_user = Auth::user()->id;
        $resume->save();
        
        return redirect()->back()->with(['success' => 'created successfully']);
        
        
    }

    public function edit(Request $request, $id)
    {
        $resume =  CandidateCvs::find($id);
        $data = [
            'rows'               => $resume,
            'page_title'        =>'Resumes'
            
        ];
       

        return view('Candidate::frontend.edit', $data);
    }
    
    public function update(Request $request, $id){
        $request->validate([
            'name' => 'required',
            'resume' => 'required|mimes:jpg,doc,docx,pdf,rtf,rtx,ppt,pptx,jpeg,bmp'
            ]);
            if($request->file('resume')){
        $file_id = MediaFile::saveUploadFile($request->file('resume'));
            }
        $resume =  CandidateCvs::find($id);
        $resume->origin_id = Auth::user()->id;
        $resume->file_id = $file_id;
        $resume->is_default = 1;
        $resume->create_user = Auth::user()->id;
        $resume->save();
        
        return redirect()->back()->with(['success' => 'updated successfully']);
        
        
    }
    
    public function delete($id){
        $resume =  CandidateCvs::find($id);
        $resume->delete();
        
        return redirect()->back()->with(['success' => 'deleted successfully']);
        
    }
}
