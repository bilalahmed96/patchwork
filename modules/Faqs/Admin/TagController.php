<?php
namespace Modules\Faqs\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\AdminController;
use Modules\Faqs\Models\Tag;
use Illuminate\Support\Str;
use Modules\Faqs\Models\TagTranslation;
use Modules\Faqs\Models\FaqsTag;

class TagController extends AdminController
{
    public function __construct()
    {
        $this->setActiveMenu('admin/module/faqs');
        parent::__construct();
    }

    public function index(Request $request)
    {
        // $this->checkPermission('faqs_manage_others');

        $tagname = $request->query('s');
        $taglist = Tag::query() ;
        if ($tagname) {
            $taglist->where('name', 'LIKE', '%' . $tagname . '%');
        }
        $taglist->orderby('name', 'asc');
        $data = [
            'rows'        => $taglist->paginate(20),
            'row'    => new Tag(),
            'breadcrumbs' => [
                [
                    'name' => 'Faqs',
                    'url'  => 'admin/module/faqs'
                ],
                [
                    'name'  => __('Tag'),
                    'class' => 'active'
                ],
            ],
            'translation'=>new TagTranslation()
        ];
        return view('Faqs::admin.tag.index', $data);
    }

    public function edit(Request $request, $id)
    {
        // $this->checkPermission('faqs_manage_others');
        $row = Tag::find($id);
        if (empty($row)) {
            return redirect('admin/module/faqs/tag');
        }

        $data = [
            'row'     => $row,
            'translation'=>$row->translateOrOrigin($request->query('lang')),
            'parents' => Tag::get(),
            'enable_multi_lang'=>true
        ];
        return view('Faqs::admin.tag.detail', $data);
    }

    public function store(Request $request, $id){

        // $this->checkPermission('faqs_manage_others');

        if($id>0){
            $row = Tag::find($id);
            if (empty($row)) {
                return redirect(route('faqs.admin.tag.index'));
            }
        }else{
            $row = new Tag();
        }

        $row->fill($request->input());
        $res = $row->saveOriginOrTranslation($request->input('lang'));

        if ($res) {
            if($id > 0 ){
                return back()->with('success',  __('Tag updated') );
            }else{
                return redirect(route('faqs.admin.tag.index'))->with('success', __('Tag Created') );
            }
        }
    }

    public function bulkEdit(Request $request)
    {
        // $this->checkPermission('faqs_manage_others');
        $ids = $request->input('ids');
        $action = $request->input('action');
        if (empty($ids) or !is_array($ids)) {
            return redirect()->back()->with('error', __('Please select at least 1 item!'));
        }
        if (empty($action)) {
            return redirect()->back()->with('error', __('Please select an Action!'));
        }
        if ($action == 'delete') {
            foreach ($ids as $id) {
                $query = Tag::where("id", $id)->first();
                if(!empty($query)){
                    $query->delete();
                }
                FaqsTag::where('tag_id', $id)->delete();
            }
        }
        return redirect()->back()->with('success', __('Update success!'));
    }
}
