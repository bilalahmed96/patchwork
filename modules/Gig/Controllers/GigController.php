<?php
namespace Modules\Gig\Controllers;

use App\Http\Controllers\Controller;
use Validator;
use Illuminate\Support\Facades\Auth;
use Modules\Gig\Models\Gig;
use Illuminate\Http\Request;
use Modules\Gig\Models\GigCategory;
use Modules\Location\Models\Location;
use Modules\Location\Models\LocationCategory;
use Modules\Order\Helpers\CartManager;
use Modules\Review\Models\Review;
use Modules\Core\Models\Attributes;
use DB;

class GigController extends Controller
{
    protected $gigClass;
    protected $locationClass;
    /**
     * @var string
     */
    private $locationCategoryClass;

    public function __construct()
    {
        $this->gigClass = Gig::class;
        $this->locationClass = Location::class;
    }

    public function callAction($method, $parameters)
    {
        if(!Gig::isEnable())
        {
            return redirect('/');
        }
        return parent::callAction($method, $parameters); // TODO: Change the autogenerated stub
    }
    public function index(Request $request)
    {
        $filters = \request()->query();
        $data = [
            'min_max_price' => $this->gigClass::getMinMaxPrice(),
            "blank"              => 1,
            "seo_meta"           => $this->gigClass::getSeoMetaForPageList(),
            'page_title'=>__('All Gigs')
        ];
        if(!empty($filters['s']))
        {
            $data['page_title'] = __("Search results for :key",['key'=>$filters['s']]);
        }
        $data['rows'] = Gig::search($filters)->with(['author'])->paginate(setting_item('gig_page_limit_item',24));

        return view('Gig::frontend.search', $data);
    }

    public function category($slug){
        $category = GigCategory::query()->withDepth()->where('slug',$slug)->where('status','publish')->first();
        if(!$category){
            abort(404);
        }
        $data = [
            'category'=>$category,
            'page_title'=>$category->name,
            'min_max_price' => Gig::getMinMaxPrice(),
        ];

        switch ($category->depth){
            case 0:
                return view('Gig::frontend.category_lv1', $data);
                break;
            default:
                $filters = \request()->query();
                if($category->depth == 1){
                    $filters['cat2_id'] = $category->id;
                }
                if($category->depth == 2){
                    $filters['cat3_id'] = $category->id;
                }
                $data['rows'] = Gig::search($filters)->with(['author'])->paginate(setting_item('gig_page_limit_item',24));
                return view('Gig::frontend.category', $data);
                break;
        }
    }

    public function detail(Request $request, $slug)
    {
        $row = $this->gigClass::where('slug', $slug)->with(['location','translations','hasWishList'])->first();
        if ( empty($row) or !$row->hasPermissionDetailView()) {
            return redirect('/');
        }
        $translation = $row->translateOrOrigin(app()->getLocale());

        $gig_related = [];
        $category_id = $row->cat_id;
        if (!empty($category_id)) {
            $gig_related = $this->gigClass::with(['translations'])->where('cat_id', $category_id)->where("status","publish")->whereNotIn('id', [$row->id])->take(3)->get();
        }

        $review_list = $row->getReviewList();
        $data = [
            'row'          => $row,
            'translation'       => $translation,
            'gig_related' => $gig_related,
            'booking_data' => [],
            'review_list'  => $review_list,
            'seo_meta'  => $row->getSeoMetaWithTranslation(app()->getLocale(),$translation),
            'body_class'=>'is_single',
            'breadcrumbs'       => [
                [
                    'name'  => __('Gig'),
                    'url'  => route('gig.search'),
                ],
                [
                    'name'  => $translation->title,
                    'class' => 'active'
                ],
            ],
        ];
        $this->setActiveMenu($row);
        return view('Gig::frontend.detail', $data);
    }
    public function buy(Request $request,$id){

        $validator = Validator::make($request->all(), [
            'package' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('', ['errors' => $validator->errors()]);
        }

        if(!Auth::check()){
            return $this->sendError(__("You have to login in to do this"))->setStatusCode(401);
        }

        $gig =  $this->gigClass::find($id);
        if(!$gig){
            return $this->sendError(__("Gig not found"));

        }

        $res  = $gig->addToCart($request->input());
        if(!empty($res['status'])){
            $res['redirect'] = route('checkout');
        }
        return $this->sendSuccess($res);
    }
}
