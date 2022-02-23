<?php
namespace Modules\Resource;

use Modules\ModuleServiceProvider;

class ModuleProvider extends ModuleServiceProvider
{
    public function boot()
    {
        $this->loadMigrationsFrom(__DIR__ . '/Migrations');
    }

    /**
     * Register bindings in the container.
     *
     * @return void
     */
    public function register()
    {
        $this->app->register(RouterServiceProvider::class);
    }

    public static function getAdminMenu()
    {
        return [
            'resource'=>[
                "position"=>56,
                'url'   => 'admin/module/resource',
                'title' => __("Resources"),
                'icon'  => 'icon ion-ios-text',
                // 'permission' => 'review_manage_others',
            ],
        ];
    }

     public static function getTemplateBlocks(){
        return [
            'resources'=>"\\Modules\\Resource\\Blocks\\ResourceList",
        ];
    }
}
