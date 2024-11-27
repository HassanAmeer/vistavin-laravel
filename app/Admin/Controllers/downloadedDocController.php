<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\downloadedDoc;

class downloadedDocController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Downloaded Documents';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new downloadedDoc());

        $grid->column('id', __('Id'));
        $grid->column('userName', __('UserName'));
        $grid->column('email', __('Email'));
        $grid->column('phone', __('Phone'));
        $grid->column('type', __('Type'));
        $grid->column('package', __('Package'));
        $grid->column('transactionId', __('TransactionId'));
        $grid->column('cardNumber', __('CardNumber'));
        $grid->column('vehicleId', __('VehicleId'));
        $grid->column('vehicleType', __('VehicleType'));
        $grid->column('make', __('Make'));
        $grid->column('model', __('Model'));
        $grid->column('bodyStyle', __('BodyStyle'));
        $grid->column('price', __('Price'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));
        $grid->column('deleted_at', __('Deleted at'));

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
        $show = new Show(downloadedDoc::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('userName', __('UserName'));
        $show->field('email', __('Email'));
        $show->field('phone', __('Phone'));
        $show->field('type', __('Type'));
        $show->field('package', __('Package'));
        $show->field('transactionId', __('TransactionId'));
        $show->field('cardNumber', __('CardNumber'));
        $show->field('vehicleId', __('VehicleId'));
        $show->field('vehicleType', __('VehicleType'));
        $show->field('make', __('Make'));
        $show->field('model', __('Model'));
        $show->field('bodyStyle', __('BodyStyle'));
        $show->field('price', __('Price'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));
        $show->field('deleted_at', __('Deleted at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new downloadedDoc());

        $form->text('userName', __('UserName'));
        $form->email('email', __('Email'));
        $form->phonenumber('phone', __('Phone'));
        $form->text('type', __('Type'));
        $form->text('package', __('Package'));
        $form->text('transactionId', __('TransactionId'));
        $form->text('cardNumber', __('CardNumber'));
        $form->text('vehicleId', __('VehicleId'));
        $form->text('vehicleType', __('VehicleType'));
        $form->text('make', __('Make'));
        $form->text('model', __('Model'));
        $form->text('bodyStyle', __('BodyStyle'));
        $form->text('price', __('Price'));

        return $form;
    }
}