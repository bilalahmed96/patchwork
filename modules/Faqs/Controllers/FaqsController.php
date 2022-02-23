<?php
namespace Modules\Faqs\Controllers;

use Illuminate\Http\Request;
use Modules\FrontendController;
use Modules\Language\Models\Language;
use Modules\Faqs\Models\Faqs;
use Modules\Faqs\Models\FaqsCategory;
use Modules\Faqs\Models\FaqsTranslation;
use Modules\Faqs\Models\Tag;

class FaqsController extends FrontendController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index(Request $request)
    {
        $model_News = Faqs::query()->select("core_faqs.*");
        $model_News->where("core_faqs.status", "publish")->orderBy('core_faqs.id', 'desc');
        if (!empty($search = $request->input("s"))) {
            $model_News->where(function($query) use ($search) {
                $query->where('core_faqs.title', 'LIKE', '%' . $search . '%');
                $query->orWhere('core_faqs.content', 'LIKE', '%' . $search . '%');
            });

            if( setting_item('site_enable_multi_lang') && setting_item('site_locale') != app_get_locale() ){
                $model_News->leftJoin('core_faqs_translations', function ($join) use ($search) {
                    $join->on('core_faqs.id', '=', 'core_faqs_translations.origin_id');
                });
                $model_News->orWhere(function($query) use ($search) {
                    $query->where('core_faqs_translations.title', 'LIKE', '%' . $search . '%');
                    $query->orWhere('core_faqs_translations.content', 'LIKE', '%' . $search . '%');
                });
            }

            $title_page = __('Search results : ":s"', ["s" => $search]);
        }
        $data = [
            'rows'              => $model_News->with("getAuthor")->with('translations')->with("getCategory")->paginate(6),
            'model_category'    => FaqsCategory::query()->where("status", "publish"),
            'model_tag'         => Tag::query(),
            'model_faqs'        => Faqs::query()->where("status", "publish"),
            'custom_title_page' => $title_page ?? "",
            'breadcrumbs'       => [
                [
                    'name'  => 'Faqs',
                    'url'  => route('faqs.index'),
                    'class' => 'active'
                ],
            ],
            'header_transparent'=>true,
            "seo_meta" => Faqs::getSeoMetaForPageList(),
            "languages"=>Language::getActive(false),
            "locale"=> app()->getLocale()
        ];
        return view('Faqs::frontend.index', $data);
    }

    public function detail(Request $request, $slug)
    {
        $row = Faqs::where('slug', $slug)->where('status','publish')->first();
        $near_post = $row->near_post();
        if (empty($row)) {
            return redirect('/');
        }
        $translation = $row->translateOrOrigin(app()->getLocale());
        $row->type = 'faqs';

        $review_list = $row->getReviewList();

        $data = [
            'row'               => $row,
            'translation'       => $translation,
            'model_category'    => FaqsCategory::where("status", "publish"),
            'model_tag'         => Tag::query(),
            'model_faqs'        => Faqs::where("status", "publish"),
            'custom_title_page' => $title_page ?? "",
            'review_list'  => $review_list,
            'breadcrumbs'       => [
                [
                    'name' => 'Faqs',
                    'url'  => route('faqs.index')
                ],
                [
                    'name'  => $translation->title,
                    'class' => 'active'
                ],
            ],
            'header_transparent'=>true,
            'seo_meta'  => $row->getSeoMetaWithTranslation(app()->getLocale(),$translation),
            'near_post' => $near_post
        ];
        $this->setActiveMenu($row);
        return view('Faqs::frontend.detail', $data);
    }
}
