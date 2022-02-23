<?php
namespace Modules\Brand\Blocks;


use Modules\Brand\Models\Brand;
use Modules\Template\Blocks\BaseBlock;

class BrandList extends BaseBlock
{
    function __construct()
    {
        $this->setOptions([
            'settings' => [
                [
                    'id'    => 'style',
                    'type'  => 'radios',
                    'label' => __('Style'),
                    'value' => 'style_1',
                    'values' => [
                        [
                            'value'   => 'style_1',
                            'name' => __("Style 1")
                        ],
                        [
                            'value'   => 'style_2',
                            'name' => __("Style 2")
                        ],
                        [
                            'value'   => 'style_3',
                            'name' => __("Style 3")
                        ],
                        [
                            'value'   => 'style_4',
                            'name' => __("Style 4")
                        ],
                        [
                            'value'   => 'style_5',
                            'name' => __("Style 5")
                        ],
                        [
                            'value'   => 'style_6',
                            'name' => __("Style 6")
                        ]
                    ],
                ],
                [
                    'id' => 'title',
                    'type' => 'input',
                    'inputType' => 'text',
                    'label' => __("Title")
                ],
                [
                    'id' => 'sub_title',
                    'type' => 'input',
                    'inputType' => 'text',
                    'label' => __("Sub Title")
                ],
                [
                    'id'        => 'number',
                    'type'      => 'input',
                    'inputType' => 'number',
                    'label'     => __('Number Items')
                ],
              
              
                [
                    'id'            => 'order_by',
                    'type'          => 'radios',
                    'label'         => __('Order By'),
                    'values'        => [
                        [
                            'value'   => 'asc',
                            'name' => __("ASC")
                        ],
                        [
                            'value'   => 'desc',
                            'name' => __("DESC")
                        ],
                    ]
                ],
                [
                    'id' => 'load_more_url',
                    'type' => 'input',
                    'inputType' => 'text',
                    'label' => __("Load More Url")
                ],
            ],
            'category'=>__("Job Blocks")
        ]);
    }

    public function getName()
    {
        return __('Brands List');
    }

    public function content($model = [])
    {
        $model = block_attrs([
            'style' => 'style_1',
            'title' => 'Our Supporters',
            'sub_title' => '',
            'number' => '',
            
           
            'order_by' => '',
            'load_more_url' => ''
        ], $model);

        $style = $model['style'] ? $model['style'] : 'style_1';

        
            $model['rows'] = $this->query($model);
       
        // $model['tabs'] = $this->query($model,true);
       

        return view("Brand::frontend.layouts.blocks.brand-list.{$style}", $model);
    }

    public function contentAPI($model = []){

    }

    public function query($model,$all = true){
        $model_brands = Brand::get();
       
        if(empty($model['order_by'])) $model['order_by'] = "desc";
    
       
       
        // $model_brands->orderBy("bc_supporters.".$model['order'], $model['order_by']);
       
        
       if(!empty($model['number'])) 
            // return $model_brands->limit($model['number'])->get(); 
            return $model_brands;
        else 
            return $model_brands;
    }
}
