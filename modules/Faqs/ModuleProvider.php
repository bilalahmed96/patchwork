<?php
namespace Modules\Faqs;

use Illuminate\Support\ServiceProvider;
use Modules\Core\Helpers\SitemapHelper;
use Modules\ModuleServiceProvider;
use Modules\Faqs\Models\Faqs;

class ModuleProvider extends ModuleServiceProvider
{

    public function boot(SitemapHelper $sitemapHelper){

        $this->publishes([
            __DIR__.'/Config/config.php' => config_path('faqs.php'),
        ]);
        if(is_installed()){
            $sitemapHelper->add("faqs",[app()->make(Faqs::class),'getForSitemap']);
        }

    }
    /**
     * Register bindings in the container.
     *
     * @return void
     */
    public function register()
    {
        $this->mergeConfigFrom(
            __DIR__.'/Config/config.php', 'faqs'
        );

        $this->app->register(RouteServiceProvider::class);
    }

    public static function getAdminMenu()
    {
        return [
            'faqs'=>[
                "position"=>17,
                'url'        => 'admin/module/faqs',
                'title'      => "Faqs",
                'icon'       => 'ion-md-bookmarks',
                // 'permission' => 'faqs_manage',
                'children'   => [
                    // 'faqs_manage'=>[
                    //     'url'        => 'admin/module/faqs',
                    //     'title'      => "All Faqs",
                    //     // 'permission' => 'faqs_manage',
                    // ],
                    'fags_manage'=>[
                        'url'        => 'admin/module/faqs/create',
                        'title'      => "Add Faqs",
                        // 'permission' => 'faqs_manage',
                    ],
                    'faqs_categoty'=>[
                        'url'        => 'admin/module/faqs/category',
                        'title'      => __("Categories"),
                        // 'permission' => 'faqs_manage',
                    ],
                    'faqs_tag'=>[
                        'url'        => 'admin/module/faqs/tag',
                        'title'      => __("Tags"),
                        // 'permission' => 'faqs_manage',
                    ],
                ]
            ],
        ];
    }

    public static function getBookableServices()
    {
        return [
            'faqs'=>Faqs::class
        ];
    }

    public static function getTemplateBlocks(){
        return [
            'list_faqs'=>"\\Modules\\Faqs\\Blocks\\ListFaqs",
            'category_faqs' => "\\Modules\\Faqs\\Blocks\\CategoryFaqs",
        ];
    }
}
