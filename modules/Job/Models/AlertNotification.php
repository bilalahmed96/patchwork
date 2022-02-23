<?php
namespace Modules\Job\Models;

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

class AlertNotification extends BaseModel{
    protected $table = "alert_notifications";
}