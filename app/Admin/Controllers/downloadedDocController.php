<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\downloadedDoc;
use \App\Models\vehicleHistoryReports;

class downloadedDocController extends AdminController
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
    protected $title = 'Downloaded Documents';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new downloadedDoc());

        $grid->filter(function ($filter) {
            $filter->equal('vId', 'Vehicle Name')->select(vehicleHistoryReports::all()->pluck('vName','vId'));
        });

        $grid->column('id', __('Id'));
        $grid->column('orderType', __('Order Type'))->display(function ($orderType) {
            $orderType = $orderType ?? 'manual';
            $color = $orderType == 'auto' ? '#00C83929' : '#FF91021A';
            $textColor = $orderType == 'auto' ? 'green' : 'orange';
            if ($orderType) {
                return <<<HTML
                    <div style="margin-bottom: 5px; background: {$color}; padding: 2px; border-radius: 5px; color: {$textColor};">
                      <center>{$orderType}</center>
                    </div>
                HTML;
            }
            return '<span> Empty </span>';
        })->color('#B0AFAFFF');
        
        // $grid->column('status', __('Status'))->switch();
        $grid->column('status', __('Status (Pending/Done)'))->switch();
        

        $grid->column('vId', 'Vehicle Id #')->display(function ($id) {
            $vhr = $this->byvid; 
            if ($vhr) {
                return <<<HTML
                    <div style="margin-bottom: 10px;">
                    <a class="icon-eye" target="_blank" href="{$this->baseUrl}/admin/vehicle-history-reports/{$vhr->id}" style="text-decoration:none; color:#0090b4;"></a> 
                    <a class="icon-file-pdf" target="_blank" href="{$this->baseUrl}/vpdf/{$id}" style="text-decoration:none; color:#0090b4; font-size:1.5rem;"> <span class="user-name" id="name-{$id}" style="color:#B0AFAFFF;  font-size:1rem;"> {$id}</span> </a> 

                    <div style="margin-bottom: 10px; text-align: right;">
                       <center> <a class="icon-location-arrow" target="_blank" href="{$this->baseUrl}/spdf/{$id}/{$this->email}" style="text-decoration:none; color:#0090b4;"> Send Email </a>  </center>
                     </div>

                    </div>
                HTML;
            }
            return '# <span style="color:#0090b4">'.$id.' <i style="color: silver;"> (Manual) </i></span>';
        })->color('#B0AFAFFF');

        



        $grid->column('userName', __('User Name'));
        $grid->column('email', __('Email'));
        $grid->column('phone', __('Phone'));
        $grid->column('type', __('Type'))->badge($style = 'dark');
        $grid->column('package', __('Package'))->badge($style = 'primary');
        $grid->column('transactionId', __('Transaction Id'));
        $grid->column('cardNumber', __('Card Number'));
        // $grid->column('vId', __('Vehicle Id'));
     
        $grid->column('vImg', __('vehicle image'))->image($this->baseUrl.'/uploads/',75,75);
        $grid->column('vehicleType', __('Vehicle Type'));
        $grid->column('make', __('Make'));
        $grid->column('model', __('Model'));
        $grid->column('bodyStyle', __('Body Style'));
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
        $show->field('orderType', __('Order Type'));
        $show->field('status', __('Status'));
        $show->field('userName', __('User Name'));
        $show->field('email', __('Email'));
        $show->field('phone', __('Phone'));
        $show->field('type', __('Type'));
        $show->field('package', __('Package'));
        $show->field('transactionId', __('Transaction Id'));
        $show->field('cardNumber', __('Card Number'));
        $show->field('vId', __('Vehicle Id'));
        $show->field('vehicleType', __('Vehicle Type'));
        $show->field('make', __('Make'));
        $show->field('model', __('Model'));
        $show->field('bodyStyle', __('Body Style'));
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

        // $form->text('orderType', __('Order Type'));
        $form->select('orderType', 'Select Order Type')->options(["auto" => 'Auto', "manual" => 'Manual'])->rules('required');
        
        $form->switch('status', __('Status'));
        $form->text('userName', __('User Name'));
        $form->email('email', __('Email'));
        $form->phonenumber('phone', __('Phone'));
        // $form->text('type', __('Type'));
        $form->select('type','Type #')->options(["car" => 'CAR', "bike" => 'BIKE']);
        
        // $form->text('package', __('Package'));
        $form->select('package', 'Select Package')->options(["35" => 'Silver (35 USD)', "55" => 'Gold (55 USD)',"65" => 'Platinium (65 USD)',])->rules('required');

        $form->text('transactionId', __('Transaction Id'));
        $form->text('cardNumber', __('Card Number'));
        // $form->text('vId', __('Vehicle Id'));
        $form->select('vId', 'Select Vehicle')->options(vehicleHistoryReports::all()->pluck('vName', 'vId'))->rules('required');

        $form->text('vehicleType', __('Vehicle Type'));
        
        $form->text('make', __('Make'));
        $form->text('model', __('Model'));
        $form->text('bodyStyle', __('Body Style'));
        $form->text('price', __('Price'));

        return $form;
    }
}