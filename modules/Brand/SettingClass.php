<?php
namespace  Modules\Brand;

use Modules\Core\Abstracts\BaseSettingsClass;

class SettingClass extends BaseSettingsClass
{
    public static function getSettingPages()
    {
        return [
            [
                'id'   => 'brand',
                'title' => __("Our Supporters"),
                'position' => 31,
                'view'=>"Brand::admin.settings.brand",
                "keys"=>[
                   
                ],
                'html_keys'=>[

                ]
            ]
        ];
    }
}
