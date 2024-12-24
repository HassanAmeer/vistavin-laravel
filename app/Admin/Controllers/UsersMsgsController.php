<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\UsersMsgs;

class UsersMsgsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'UsersMsgs';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
{
    $grid = new Grid(new UsersMsgs());

    // Customize the data to show only the latest message for each `sid`
    $grid->model()->collection(function ($collection) {
        // Order messages by `created_at` descending
        $allMessages = UsersMsgs::orderBy('created_at', 'desc')->get();
        $uniqueMessages = [];

        foreach ($allMessages as $message) {
            if (!isset($uniqueMessages[$message->sid])) {
                $uniqueMessages[$message->sid] = $message;
            }
        }

        return collect($uniqueMessages);
    });

    $grid->column('id', __('Id'));
    $grid->column('_', __('Chat With'))->display(function () {
        return "<a href='/chat?uid={$this->sid}' style='color:indigo;text-decoration:none;' class='icon-paper-plane' style='font-size:2rem; transform:scale(1.4)'> Chat </a>";
    });
    $grid->column('sid', __('From'))->display(function ($sid) {
        return "<span style='white-space:pre-wrap;display:block;max-height:70px;overflow-y:scroll;width:150px' class='icon-laptop'> {$sid}</span>";
    })->color('#0090b4')->filter([
        'admin' => 'From Admin',
    ])->qrcode();
    $grid->column('rid', __('To'))->display(function ($rid) {
        return "<span style='white-space:pre-wrap;display:block;max-height:70px;overflow-y:scroll;width:150px'>{$rid}</span>";
    })->color('silver');
    $grid->column('msg', __('Message'))->color('black')->copyable();
    $grid->column('created_at', __('Created at')); // Show the original created_at
    $grid->column('updated_at', __('Updated at'));
    $grid->column('deleted_at', __('Deleted at'));

    return $grid;
}

    


    
    // protected function grid()
    // {
    //     $grid = new Grid(new UsersMsgs());
    // $grid->model()->orderByDesc('created_at');
    //     $grid->column('id', __('Id'));
    //     $grid->column('_', __('Chat With'))->display(function ($msg) {
    //         return "<a href='/chat?uid={$this->sid}' style='color:indigo;text-decoration:none;' class='icon-paper-plane' style='font-size:2rem; transform:scale(1.4)'> Chat </a>";
    //     });
    //     $grid->column('sid', __('From'))->display(function ($sid) {
    //         return "<span style='white-space:pre-wrap;display:block;max-height:70px;overflow-y:scroll;width:150px'>{$sid}</span>";
    //     })->color('#0090b4');
    //     $grid->column('rid', __('To'))->display(function ($sid) {
    //         return "<span style='white-space:pre-wrap;display:block;max-height:70px;overflow-y:scroll;width:150px'>{$sid}</span>";
    //     })->color('silver');
    //     $grid->column('msg', __('Message'))->color('black');
    //     $grid->column('created_at', __('Created at'));
    //     $grid->column('updated_at', __('Updated at'));
    //     $grid->column('deleted_at', __('Deleted at'));

    //     return $grid;
    // }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(UsersMsgs::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('sid', __('From'))->color('#0090b4');
        $show->field('rid', __('To'))->color('orange');
        $show->field('msg', __('Message'));
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
        $form = new Form(new UsersMsgs());


        // $form->radio('options', 'Email To')
        // ->options([
        //     1 => 'Select User',
        //     2 => 'Custom Email',
        // ])
        // ->when(1, function (Form $form) {
        //     $form->select('email', 'Select User')->options(appUsers::all()->pluck('name', 'email'))->default(null);
        // })
        // ->when(2, function (Form $form) {
        //     $form->text('email', 'Enter Email')->default('');
        // });
        $form->text('sid', __('From'))->default('admin')->disable();
        
        $form->text('rid', __('TO'))->default('email@gmail.com');
        $form->html('<hr>');
        $form->textarea('msg', __('Message'))->default('Something');

        return $form;
    }
}