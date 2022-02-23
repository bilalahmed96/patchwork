<?php
namespace  Modules\Faqs;

use Modules\Core\Abstracts\BaseSettingsClass;

class SettingClass extends BaseSettingsClass
{
    public static function getSettingPages()
    {
        return [
            [
                'id'   => 'faqs',
                'title' => "Faqs Settings",
                'position'=>56,
                'view'=>"Faqs::admin.settings.faqs",
                "keys"=>[
                    'faqs_page_list_title',
                    'faqs_page_list_sub_title',
                    'faqs_page_list_banner',
                    'faqs_sidebar',
                    'faqs_page_list_seo_title',
                    'faqs_page_list_seo_desc',
                    'faqs_page_list_seo_image',
                    'faqs_page_list_seo_share',
                    'faqs_enable_review',
                    'faqs_review_approved',
                    'faqs_enable_review_after_booking',
                    'faqs_review_number_per_page',
                    'faqs_review_stats',
                ],
                'html_keys'=>[

                ]
            ]
        ];
    }
}
