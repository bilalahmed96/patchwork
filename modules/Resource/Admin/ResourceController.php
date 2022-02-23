<?php
namespace Modules\Resource\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Modules\AdminController;
use Modules\News\Models\News;
use Modules\Resource\Models\Resource;

class ResourceController extends AdminController
{
    public function __construct()
    {
        $this->setActiveMenu('admin/module/resource');
        parent::__construct();
    }

    public function index(Request $request)
    {
        $data = Resource::query()->orderBy('id', 'desc');
        $title = $request->query('s');
       
        if ($title) {
            $data->where('title', 'LIKE', '%' . $title . '%');
            $data->orderBy('title', 'asc');
        }


        // $this->filterLang($data);

        $data = [
            'rows'        => $data->with("getAuthor")->paginate(20),
           
            'breadcrumbs' => [
                [
                    'name' => __('Resources'),
                    'url'  => 'admin/module/resource'
                ],
                [
                    'name'  => __('All'),
                    'class' => 'active'
                ],
            ],
            // "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'page_title'=>__("Resource Management")
        ];
        return view('Resource::admin.index', $data);
    }
    
    public function create(Request $request){
        $row = new Resource();
        $row->fill([
            'status' => 'publish',
        ]);
        $data = [
            
            'row'         => $row,
            'breadcrumbs' => [
                [
                    'name' => __('Resource'),
                    'url'  => 'admin/module/resource'
                ],
                [
                    'name'  => __('Add Resource'),
                    'class' => 'active'
                ],
            ],
           
        ];
        return view('Resource::admin.create', $data);
    }
    
        public function edit(Request $request, $id)
    {
        

        $row = Resource::find($id);

       
        if (empty($row)) {
            return redirect('admin/module/resource');
        }

        $data = [
            'row'  => $row,
            
            'enable_multi_lang'=>true
        ];
        return view('Resource::admin.create', $data);
    }
    
        public function store(Request $request, $id){
        if($id>0){
           
            $row = Resource::find($id);
            if (empty($row)) {
                return redirect(route('resource.admin.index'));
            }
        }else{
            
            $row = new Resource();
            $row->status = "publish";
        }

        $row->fill($request->input());
        $row->image = $request->image;
        if($request->input('slug')){
            $row->slug = $request->input('slug');
        }
        $res = $row->saveOriginOrTranslation($request->query('lang'),true);

        if ($res) {
           
            if($id > 0 ){
                return back()->with('success',  __('Resource updated') );
            }else{
                return redirect(route('resource.admin.edit',$row->id))->with('success', __('Resource created') );
            }
        }
    }

    public function bulkEdit(Request $request)
    {
        // $this->checkPermission("review_manage_others");
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
                $resource = Resource::where('id', $id)->first();
                if(!empty($resource)){
                    $resource->delete();
                    $resource->save();
                    
                }
            }
        } else {
            foreach ($ids as $id) {
                $resource = Resource::where('id', $id)->first();
                $resource->status = $action;
                $resource->save();
                
            }
        }
        return redirect()->back()->with('success', __('Update success!'));
    }
}
