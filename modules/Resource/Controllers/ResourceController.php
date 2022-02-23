<?php
namespace Modules\Resource\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Modules\Core\Events\CreateReviewEvent;
use Modules\News\Models\News;
use Modules\Resource\Models\Resource;

use Validator;
use Illuminate\Support\Facades\Auth;

class ResourceController extends Controller
{
    public function __construct()
    {
    }

    public function index(Request $request){
             $resources = Resource::query()->select("resources.*");
        $resources->where("resources.status", "publish")->orderBy('resources.id', 'desc');
        if (!empty($search = $request->input("s"))) {
            $resources->where(function($query) use ($search) {
                $query->where('resources.title', 'LIKE', '%' . $search . '%');
                $query->orWhere('resources.content', 'LIKE', '%' . $search . '%');
            });

         

            $title_page = "Resources";
        }
        $data = [
            'rows'              => $resources->with("getAuthor")->paginate(9),
           
            'custom_title_page' => $title_page ?? "",
            'breadcrumbs'       => [
                [
                    'name'  => __('Resources'),
                    'url'  => route('resource.index'),
                    'class' => 'active'
                ],
            ],
            'header_transparent'=>true,
            // "seo_meta" => News::getSeoMetaForPageList(),
            // "languages"=>Language::getActive(false),
            "locale"=> app()->getLocale()
        ];
        return view('Resource::frontend.index', $data);
    }
}
