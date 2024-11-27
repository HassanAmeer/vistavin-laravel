<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\reportSetting;

class reportSettingController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Report Setting';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new reportSetting());

        $grid->column('id', __('Id'));
        $grid->column('vehicleHistoryReportDesc', __('Vehicle History Report Description'))->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:#0090b4;');
        $grid->column('titleHistoryDesc', __('Title History Description'))->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        $grid->column('facebookLink', __('Facebook Link'));
        $grid->column('showFacebook', __('Show Facebook'))->switch();
        $grid->column('instagaramLink', __('Instagaram Link'));
        $grid->column('showInstagaram', __('Show Instagaram'))->switch();
        $grid->column('whatsappLink', __('Whatsapp Link'));
        $grid->column('showWhatsapp', __('Show Whatsapp'))->switch();
        $grid->column('socialmediaDesc', __('Social Media Description'))->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        $grid->column('rightReservedDesc', __('Right Reserved Description'))->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        $grid->column('signatureDesc', __('Signature Description'))->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
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
        $show = new Show(reportSetting::findOrFail($id));

        // $show->field('id', __('Id'));
        $show->field('vehicleHistoryReportDesc', __('Vehicle History Report Description'));
        $show->field('titleHistoryDesc', __('Title History Desc'));
        $show->field('facebookLink', __('Facebook Link'));
        $show->field('showFacebook', __('Show Facebook'))->as(function ($showFacebook) {
            return $showFacebook ? 'Yes' : 'No';
        });
        $show->field('instagaramLink', __('Instagaram Link'));
        $show->field('showInstagaram', __('Show Instagaram'))->as(function ($showFacebook) {
            return $showFacebook ? 'Yes' : 'No';
        });
        $show->field('whatsappLink', __('Whatsapp Link'));
        $show->field('showWhatsapp', __('Show Whatsapp'))->as(function ($showFacebook) {
            return $showFacebook ? 'Yes' : 'No';
        });
        $show->field('socialmediaDesc', __('Social Media Description'));
        $show->field('rightReservedDesc', __('Right Reserved Description'));
        $show->field('signatureDesc', __('Signature Description'));
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
        $form = new Form(new reportSetting());

        $form->text('vehicleHistoryReportDesc', __('Vehicle History Report Description'));
        $form->textarea('titleHistoryDesc', __('Title History Description'));
        $form->text('facebookLink', __('Facebook Link'));
        $form->switch('showFacebook', __('Show Facebook'))->default(0);
        $form->text('instagaramLink', __('Instagaram Link'));
        $form->switch('showInstagaram', __('Show Instagaram'))->default(0);
        $form->text('whatsappLink', __('Whatsapp Link'));
        $form->switch('showWhatsapp', __('Show Whatsapp'))->default(0);
        $form->textarea('socialmediaDesc', __('Social Media Description'));
        $form->textarea('rightReservedDesc', __('Right Reserved Description'));
        $form->textarea('signatureDesc', __('Signature Description'));

        return $form;
    }
}