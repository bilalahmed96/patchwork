<?php
namespace Modules\News\Blocks;

use Modules\Template\Blocks\BaseBlock;
use Modules\News\Models\News;
use Modules\News\Models\NewsCategory;

class CategoryNews extends BaseBlock
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
                        ]
                    ],
                ],
                [
                    'id'        => 'title',
                    'type'      => 'input',
                    'inputType' => 'text',
                    'label'     => __('Title')
                ],
                [
                    'id'        => 'sub_title',
                    'type'      => 'input',
                    'inputType' => 'text',
                    'label'     => __('Sub Title')
                ],
                 [
                    'id' => 'content',
                    'type' => 'editor',
                    'inputType' => 'textArea',
                    'label' => __("Content")
                ],
                [
                    'id'        => 'number',
                    'type'      => 'input',
                    'inputType' => 'number',
                    'label'     => __('Number Item')
                ],
                
                [
                    'id'            => 'order',
                    'type'          => 'radios',
                    'label'         => __('Order'),
                    'values'        => [
                        [
                            'value'   => 'id',
                            'name' => __("Date Create")
                        ],
                        [
                            'value'   => 'title',
                            'name' => __("Title")
                        ],
                    ]
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
                ]
            ],
           
        ]);
    }

    public function getName()
    {
        return __('News: Category Items');
    }

    public function content($model = [])
    {
        $list = $this->query($model);
        $data = [
            'rows'       => $list,
            'title'      => $model['title'] ?? "",
            'sub_title'  => $model['sub_title'] ?? "",
           
            'desc'      => $model['desc'] ?? "",
            'content'  => $model['content'] ?? "",
        ];
        $style = !empty($model['style']) ? $model['style'] : 'style_1';

        return view('News::frontend.blocks.list-news-category.'.$style, $data);
    }

    public function contentAPI($model = []){
        $rows = $this->query($model);
        $model['data']= $rows->map(function($row){
            return $row->dataForApi();
        });
        return $model;
    }

    public function query($model){
        $model_news_cat = NewsCategory::select("core_news_category.*")->with(['translations']);
        if(empty($model['order'])) $model['order'] = "id";
        if(empty($model['order_by'])) $model['order_by'] = "desc";
        
    

        $model_news_cat->orderBy("core_news_category.".$model['order'], $model['order_by']);
        $model_news_cat->where("core_news_category.status", "publish");
        $model_news_cat->groupBy("core_news_category.id");
        if(empty($model['number'])) 
            return $model_news_cat->get();
        else
            return $model_news_cat->limit($model['number'])->get();
    }
}
