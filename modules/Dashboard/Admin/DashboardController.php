<?php
namespace Modules\Dashboard\Admin;

use Illuminate\Http\Request;
use Modules\AdminController;
use Modules\Booking\Models\Booking;
use Modules\Job\Models\Job;
use Modules\Company\Models\Company;
use Illuminate\Support\Facades\Auth;

class DashboardController extends AdminController
{
    public function index()
    {
        if(is_admin())
        {
            $f = strtotime('monday this week');
            $data = [
            ];
            return view('Dashboard::index', $data);
        }else{
            $user = Auth::user();
            $company_id = Auth::user()->company->id ?? '';
           
            $jobs =  $job_query = Job::with(['location', 'category', 'company'])->orderBy('id', 'desc')->where('company_id', $company_id)->get();
            if(Auth::user()->role_id == 3){
                $jobs =  $job_query = Job::with(['location', 'category', 'company'])->where('is_featured', 1)->orderBy('is_featured', 'desc')->get();
            }
            $data = [
                'rows' => $jobs
            ];
            // return $jobs;
            if(Auth::user()->role_id == 3){
                return view('Dashboard::index-employee', $data);
            }
            return view('Dashboard::index-company', $data);
        }
    }

    public function reloadChart(Request $request)
    {
        $chart = $request->input('chart');
        switch ($chart) {
            case "earning":
                $from = $request->input('from');
                $to = $request->input('to');
                return $this->sendSuccess([
                    'data' => Booking::getDashboardChartData(strtotime($from), strtotime($to))
                ]);
                break;
        }
    }
}
