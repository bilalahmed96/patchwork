<?php
namespace Modules\Resource\Models;

use App\BaseModel;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Cache;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Review\Models\ReviewMeta;

class Resource extends BaseModel
{
    use SoftDeletes;
    protected $table    = 'resources';
    protected $fillable = [
        'link',
        'content',
        'title',
        'image',

    ];

    /**
     * Get Category
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function getUserInfo()
    {
        return $this->hasOne("Modules\User\Models\User", "id", 'create_user')->withTrashed();
    }



    public function author()
    {
        return $this->belongsTo("App\User", "create_user", "id")->select(['id','name','first_name','last_name','avatar_id'])->withDefault();
    }


}
