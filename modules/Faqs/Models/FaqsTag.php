<?php
namespace Modules\Faqs\Models;

use App\BaseModel;
use Illuminate\Database\Eloquent\SoftDeletes;

class FaqsTag extends BaseModel
{
    use SoftDeletes;
    protected $table = 'core_faqs_tag';
    protected $fillable = [
        'faqs_id',
        'tag_id'
    ];

    public static function getModelName()
    {
        return "Faqs Tag";
    }

    public static function searchForMenu($q = false)
    {

    }

    public function tag()
    {
        return $this->belongsTo('Modules\Faqs\Models\FaqsTag');
    }

    public static function getAll()
    {
        return self::with('tag')->get();
    }

    public static function addTag($tags_ids, $faqs_id)
    {
        if (!empty($tags_ids)) {
            foreach ($tags_ids as $tag_id) {
                $find = parent::where('faqs_id', $faqs_id)->where('tag_id', $tag_id)->first();
                if (empty($find)) {

                    $a = new self();
                    $a->faqs_id = $faqs_id;
                    $a->tag_id = $tag_id;
                    $a->save();
                }
            }
        }
    }

    public static function getTags(){

        $query = Tag::query()->with('translations');

        $query->select(['core_tags.*']);

        return $query
            ->join('core_faqs_tag as nt','nt.tag_id','=','core_tags.id')->orderByRaw('RAND()')
            ->groupBy('core_tags.id')
            ->get(10);

    }
}
