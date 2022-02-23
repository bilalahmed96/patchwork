<?php
namespace Modules\Faqs\Admin;

use Illuminate\Http\Request;
use Modules\AdminController;
use Modules\Language\Models\Language;
use Modules\Faqs\Models\FaqsCategory;
use Modules\Faqs\Models\Faqs;
use Modules\Faqs\Models\FaqsTranslation;

class FaqsController extends AdminController
{
    public function __construct()
    {
        $this->setActiveMenu('admin/module/faqs');
        parent::__construct();
    }

    public function index(Request $request)
    {
        // $this->checkPermission('faqs_manage');
        if(!is_admin()){
            abort(403);
        }
        $dataNews = Faqs::query()->orderBy('id', 'desc');
        $post_name = $request->query('s');
        $cate = $request->query('cate_id');
        if ($cate) {
           $dataNews->where('cat_id', $cate);
        }
        if ($post_name) {
            $dataNews->where('title', 'LIKE', '%' . $post_name . '%');
            $dataNews->orderBy('title', 'asc');
        }


        $this->filterLang($dataNews);

        $data = [
            'rows'        => $dataNews->with("getAuthor")->with("getCategory")->paginate(20),
            'categories'  => FaqsCategory::get(),
            'breadcrumbs' => [
                [
                    'name' => 'Faqs',
                    'url'  => 'admin/module/faqs'
                ],
                [
                    'name'  => __('All'),
                    'class' => 'active'
                ],
            ],
            "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'page_title'=>"Faqs Management"
        ];
        return view('Faqs::admin.faqs.index', $data);
    }

    public function create(Request $request)
    {
        // $this->checkPermission('faqs_manage');
        if(!is_admin()){
            abort(403);
        }
        $row = new Faqs();
        $row->fill([
            'status' => 'publish',
        ]);
        $data = [
            'categories'        => FaqsCategory::get()->toTree(),
            'row'         => $row,
            'breadcrumbs' => [
                [
                    'name' => 'Faqs',
                    'url'  => 'admin/module/faqs'
                ],
                [
                    'name'  => 'Add Faq',
                    'class' => 'active'
                ],
            ],
            'translation'=>new FaqsTranslation()
        ];
        return view('Faqs::admin.faqs.detail', $data);
    }

    public function edit(Request $request, $id)
    {
        // $this->checkPermission('faqs_manage');
        if(!is_admin()){
            abort(403);
        }
        $row = Faqs::find($id);

        $translation = $row->translateOrOrigin($request->query('lang'));

        if (empty($row)) {
            return redirect('admin/module/faqs');
        }

        $data = [
            'row'  => $row,
            'translation'  => $translation,
            'categories' => FaqsCategory::get()->toTree(),
            'tags' => $row->getTags(),
            'enable_multi_lang'=>true
        ];
        return view('Faqs::admin.faqs.detail', $data);
    }

    public function store(Request $request, $id){
        if(!is_admin()){
            abort(403);
        }
        if($id>0){
            // $this->checkPermission('faqs_manage');
            $row = Faqs::find($id);
            if (empty($row)) {
                return redirect(route('faqs.admin.index'));
            }
        }else{
            // $this->checkPermission('faqs_manage');
            $row = new Faqs();
            $row->status = "publish";
        }

        $row->fill($request->input());
        if($request->input('slug')){
            $row->slug = $request->input('slug');
        }
        $res = $row->saveOriginOrTranslation($request->query('lang'),true);

        if ($res) {
            if(is_default_lang($request->query('lang'))){
                $row->saveTag($request->input('tag_name'), $request->input('tag_ids'));
            }
            if($id > 0 ){
                return back()->with('success',  'Faqs updated' );
            }else{
                return redirect(route('faqs.admin.edit',$row->id))->with('success', 'Faqs created' );
            }
        }
    }

    public function bulkEdit(Request $request)
    {
        if(!is_admin()){
            abort(403);
        }
        // $this->checkPermission('faqs_manage');
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
                $query = Faqs::where("id", $id);
                if (!$this->hasPermission('faqs_manage_others')) {
                    $query->where("create_user", Auth::id());
                    $this->checkPermission('faqs_manage');
                }
                $query->first();
                if(!empty($query)){
                    $query->delete();
                }
            }
        } else {
            foreach ($ids as $id) {
                $query = Faqs::where("id", $id);
                if (!$this->hasPermission('faqs_manage_others')) {
                    $query->where("create_user", Auth::id());
                    $this->checkPermission('faqs_manage');
                }
                $query->update(['status' => $action]);
            }
        }
        return redirect()->back()->with('success', __('Update success!'));
    }

    public function trans($id,$locale){
        $row = Faqs::find($id);

        if(empty($row)){
            return redirect()->back()->with("danger","Faqs does not exists");
        }

        $translated = Faqs::query()->where('origin_id',$id)->where('lang',$locale)->first();
        if(!empty($translated)){
            redirect($translated->getEditUrl());
        }

        $language = Language::where('locale',$locale)->first();
        if(empty($language)){
            return redirect()->back()->with("danger",__("Language does not exists"));
        }

        $new = $row->replicate();

        if(!$row->origin_id){
            $new->origin_id = $row->id;
        }

        $new->lang = $locale;

        $new->save();


        return redirect($new->getEditUrl());
    }
}
