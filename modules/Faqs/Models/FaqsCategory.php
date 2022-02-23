<?php
namespace Modules\Faqs\Models;

use App\BaseModel;
use Kalnoy\Nestedset\NodeTrait;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Core\Models\SEO;

class FaqsCategory extends BaseModel
{
    use SoftDeletes;
    use NodeTrait;
    protected $table = 'core_faqs_category';
    protected $fillable = [
        'name',
        'content',
        'status',
        'parent_id'
    ];
    protected $slugField     = 'slug';
    protected $slugFromField = 'name';
    protected $seo_type = 'faqs_category';

    public static function getModelName()
    {
        return "Faqs Category";
    }

    public function filterbyCat($id)
    {
        $posts = Faqs::where('faqs_id', $this->id)->get();
        return $posts;
    }

    public static function searchForMenu($q = false)
    {
        $query = static::select('id', 'name');
        if (strlen($q)) {

            $query->where('title', 'name', "%" . $q . "%");
        }
        $a = $query->limit(10)->get();
        return $a;
    }

    public function getDetailUrl($locale = false)
    {
        return route('faqs.category.index',['slug'=>$this->slug]);
    }

    public function dataForApi(){
        $translation = $this->translateOrOrigin(app()->getLocale());
        return [
            'name'=>$translation->name,
            'id'=>$this->id,
            'url'=>$this->getDetailUrl()
        ];
    }

}
