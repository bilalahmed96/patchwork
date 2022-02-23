<?php
namespace Modules\Brand\Models;

use App\BaseModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\Candidate\Models\Category;
use Modules\Company\Models\Company;
use Modules\Location\Models\Location;
use Modules\Media\Helpers\FileHelper;
use Modules\Skill\Models\Skill;
use Modules\User\Models\UserWishList;

class Brand extends BaseModel
{
    use SoftDeletes;
    protected $table = 'bc_supporters';
    protected $fillable = [
        'name',
        'content',
        'image',
      
    ];
  


    public static function getAll()
    {
        return self::get();
    }

    public function getEditUrl()
    {
        $lang = $this->lang ?? setting_item("site_locale");
        return route('brand.admin.edit',['id'=>$this->id , "lang"=> $lang]);
    }

 



    public function getDetailUrl()
    {
        return url(app_get_locale(false, false, '/') .  "brand/" . $this->slug);
    }

    public function timeAgo() {
        if(empty($this->created_at)) return false;
        $estimate_time = strtotime('now') - strtotime($this->created_at);

        if( $estimate_time < 1 )
        {
            return false;
        }
        if(($estimate_time/86400) >= 1){
            return display_date($this->created_at);
        }
        $condition = array(
            60 * 60                 =>  __('hour(s) ago'),
            60                      =>  __('minute(s) ago'),
            1                       =>  __('second(s) ago'),
        );

        foreach( $condition as $secs => $str ){
            $d = $estimate_time / $secs;

            if( $d >= 1 ){
                if($d < 60 && $secs == 1){
                    return __("just now");
                }
                $r = round( $d );
                return $r . ' ' . $str;
            }
        }
        return display_date($this->created_at);
    }

    public function isOpen(){
        if(empty($this->expiration_date)) return false;
        $estimate_time = strtotime($this->expiration_date) - strtotime('now');
        return $estimate_time >= 0;
    }

 
    public function getThumbnailUrl(){
        if(!empty($this->image)){
            return FileHelper::url($this->image);
        }elseif(!empty($this->company) && $this->company->avatar_id){
            return FileHelper::url($this->company->avatar_id);
        }elseif(!empty($this->user)){
            return $this->user->getAvatarUrl();
        }else{
            return false;
        }
    }



    static public function getSeoMetaForPageList()
    {
        $meta['seo_title'] = __("Find Jobs");
        if (!empty($title = setting_item_with_lang("job_page_list_seo_title",false))) {
            $meta['seo_title'] = $title;
        }else if(!empty($title = setting_item_with_lang("job_page_search_title"))) {
            $meta['seo_title'] = $title;
        }
        $meta['seo_image'] = null;
        if (!empty($title = setting_item("job_page_list_seo_image"))) {
            $meta['seo_image'] = $title;
        }
        $meta['seo_desc'] = setting_item_with_lang("job_page_list_seo_desc");
        $meta['seo_share'] = setting_item_with_lang("job_page_list_seo_share");
        $meta['full_url'] = url(config('job.job_route_prefix'));
        return $meta;
    }

}
