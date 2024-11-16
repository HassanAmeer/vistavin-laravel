<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\categoriesmodel;

class categoriescontroller extends AdminController
{

    protected $baseUrl;

    public function __construct()
    {
        $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
        $host = $_SERVER['HTTP_HOST'];
        $this->baseUrl = $requestScheme . '://' . $host;
    }



    
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Categories';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        
        $grid = new Grid(new categoriesmodel());

        $grid->column('id', __('Id'));
        $grid->column('image', __('Image'))->image($this->baseUrl.'/uploads/',75,75);
        $grid->column('name', __('Name'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
        $host = $_SERVER['HTTP_HOST'];
        $baseUrl = $requestScheme . '://' . $host;
        // echo $baseUrl;

        $show = new Show(categoriesmodel::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('image', __('Image'))->image($this->baseUrl.'/uploads/',75,75);
        $show->field('name', __('Name'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new categoriesmodel());

        $form->image('image', __('Image'))->default('https://www.shutterstock.com/image-vector/labels-price-tags-keywords-coupons-600nw-2204767035.jpg');
        $form->text('name', __('Name'))->default('all');

        return $form;
    }
}