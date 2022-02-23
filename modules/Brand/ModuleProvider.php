<?php
namespace Modules\Brand;

use Illuminate\Support\ServiceProvider;
use Modules\Core\Helpers\SitemapHelper;
use Modules\Brand\Models\Brand;
use Modules\ModuleServiceProvider;

class ModuleProvider extends ModuleServiceProvider
{

    public function boot(SitemapHelper $sitemapHelper){
        $this->loadMigrationsFrom(__DIR__ . '/Migrations');

        if(is_installed()){
            $sitemapHelper->add("brand",[app()->make(Brand::class),'getForSitemap']);
        }
    }
    /**
     * Register bindings in the container.
     *
     * @return void
     */
    public function register()
    {
        $this->app->register(RouteServiceProvider::class);
        $this->app->register(EventServiceProvider::class);
    }

    public static function getAdminMenu()
    {
        return [
            'brand'=>[
                "position" => 31,
                'url'        => 'admin/module/brand',
                'title'      => "Our Supporters",
                'icon'       => 'ion-ios-briefcase',
                'permission' => '',
                'children'   => [
                    'job_view'=>[
                        'url'        => 'admin/module/brand',
                        'title'      => 'Our Supporters' ,
                       
                    ],
                    'job_create'=>[
                        'url'        => 'admin/module/brand/create',
                        'title'      => 'Add Supporter',
                       
                    ]
                   
                ]
            ]
          
        ];
    }

    public static function getTemplateBlocks(){
        return [
           
            'supporter_list' => "\\Modules\\Brand\\Blocks\\BrandList"
        ];
    }
}
