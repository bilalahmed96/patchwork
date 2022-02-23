<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 7/16/2019
 * Time: 2:05 PM
 */
namespace Modules\Faqs\Models;

use App\BaseModel;

class FaqsCategoryTranslation extends BaseModel
{
    protected $table = 'core_faqs_category_translations';
    protected $fillable = ['name', 'content'];
    protected $seo_type = 'faqs_cat_translation';
    protected $cleanFields = [
        'content'
    ];
}