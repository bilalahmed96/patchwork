<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 7/16/2019
 * Time: 2:05 PM
 */
namespace Modules\Faqs\Models;

use App\BaseModel;

class FaqsTranslation extends BaseModel
{
    protected $table = 'core_faqs_translations';
    protected $fillable = ['title', 'content'];
    protected $seo_type = 'faqs_translation';
    protected $cleanFields = [
        'content'
    ];
}