<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\vehicleHistoryReports;

class vehicleHistoryReportsController extends AdminController
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
    protected $title = 'Vehicle History Reports';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
        $host = $_SERVER['HTTP_HOST'];
        $baseUrl = $requestScheme . '://' . $host;

        $grid = new Grid(new vehicleHistoryReports());

        $grid->column('id', __('Id'));
        $grid->column('showReports', __('Show Reports'))->color('green')->switch();
        $grid->column('type', __('Type #'))->badge($style = 'dark');
        // $grid->column('vId', __('Vehicle id #'))->color('silver');
        $grid->column('vId', 'Vehicle Id #')->display(function ($id) {
     
            if ($id) {
                return <<<HTML
                    <div style="margin-bottom: 10px;">
                    <a class="icon-file-pdf" target="_blank" href="{$this->baseUrl}/vpdf/{$id}" style="text-decoration:none; color:#0090b4; font-size:1.5rem;"> <span class="user-name" id="name-{$id}" style="color:#B0AFAFFF;  font-size:1rem;"> {$id}</span> </a> 
                    </div>
                HTML;
            }
            return '<span> Empty </span>';
        })->color('#B0AFAFFF');

        $grid->column('vImg', __('vehicle image'))->image($baseUrl.'/uploads/',75,75);
        $grid->column('isShowImg', __('Show image Also'))->color('orange')->switch();
        $grid->column('vName', __('Vehicle Name'));
        $grid->column('price', __('Price'))->color('blue');

        $grid->column('make', __('Make'))->color("silver");
        $grid->column('vtype', __('Vehicle Type'))->color("silver");
        $grid->column('modelYear', __('Model Year'))->color("silver");
        $grid->column('bodyStyle', __('Body Style'))->color("silver");

        $grid->column('title', __('Title'));
        $grid->column('desc', __('Descripton'))->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        // $grid->column('points', __('Points'));
        $grid->column('points', __('Points'))->display(function ($points) {
            // Check if points is a valid JSON string or array
            if (is_string($points)) {
                // If points is a string, decode it from JSON
                $decoded = json_decode($points, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet points
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If points is already an array, just return it as an unordered list
            if (is_array($points)) {
                $listItems = implode('</li><li>', $points);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid points found
            return '<ul><li>' . __('No Points Available') . '</li></ul>';
        })->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:black;');
        
        
        // $grid->column('footerDesc', __('Footer Descripton'))->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:#0090b4;');
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
        $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
        $host = $_SERVER['HTTP_HOST'];
        $baseUrl = $requestScheme . '://' . $host;

        $show = new Show(vehicleHistoryReports::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('showReports', __('Show Reports'))->as(function ($points) {
            if ($points == 1) {
                return 'Show';
            } else {
                return 'Hide';
            }
        })->color('orange');
        
        $show->field('vId', __('Vehicle id #'));
        $show->field('type', __('Type #'));
        $show->field('vImg', __('vehicle image'))->image($baseUrl.'/uploads/',75,75);
        
        // $show->field('isShowImg', __('Show image Also'))->color('orange');
       
        
        $show->field('isShowImg', __('Show image Also'))->as(function ($points) {
            if ($points == 1) {
                return 'Show';
            } else {
                return 'Hide';
            }
        })->color('orange');

        $show->field('vName', __('Vehicle Name'));
        $show->field('title', __('Title'));
        $show->field('desc', __('Desc'));
        // $show->field('points', __('Points'));
        $show->field('points', __('Points'))->as(function ($points) {
            // Check if points is a valid JSON string or array
            if (is_string($points)) {
                // If points is a string, decode it from JSON
                $decoded = json_decode($points, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
        
            if (is_array($points)) {
                $listItems = implode(', ', $points);
                return $listItems;
            }
        
            // Default case if no valid points found
            return 'No Points Available';
        });
        
        // $show->field('footerDesc', __('FooterDesc'));
        $show->field('make', __('Make'));
        $show->field('vtype', __('Vehicle Type'));
        $show->field('modelYear', __('Model Year'));
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
        $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
        $host = $_SERVER['HTTP_HOST'];
        $baseUrl = $requestScheme . '://' . $host;
        
        $form = new Form(new vehicleHistoryReports());
        
        $form->switch('showReports', __('Show Reports'))->default(false);
        // $form->text('vId', __('vId'));
        $form->select('type','Type #')->options(["car" => 'CAR', "bike" => 'BIKE']);

        $form->image('vImg', __('vehicle image'));
        $form->switch('isShowImg', __('Show image Also'))->default(false);
        
        $form->text('vName', __('Vehicle Name'));

        $form->text('make', __('Make'));
        $form->text('vtype', __('Vehicle Type'));
        $form->text('modelYear', __('Model Year'));
        $form->text('bodyStyle', __('Body Style'));

        $form->text('title', __('Title'));
        $form->textarea('desc', __('Description'));

        // $form->table('points',"History points", function ($table) {
        //     // $table->text('points',"Points")->icon("icon-key")->sortable();
        //     $table->text('points', 'Points')->icon("icon-key"); 
        // });

        $form->list('points',"History points")->sortable();
        // $form->text('footerDesc', __('Footer Description'));
        $form->text('price', __('Price'))->icon("icon-dollar-sign");

      
        // $form->saving(function (Form $form) {
        //     if (is_array($form->points)) {
        //         $form->points = json_encode($form->points); // Convert array to JSON
        //     }
        // });

        $form->editing(function (Form $form) {
            $points = $form->model()->points;
    
            // If points are stored as a JSON string, decode them into an array
            if (is_string($points)) {
                $decoded = json_decode($points, true);
                // Check if decoding was successful and points is an array
                if (is_array($decoded)) {
                    $form->model()->points = $decoded;
                } else {
                    $form->model()->points = []; // In case decoding failed
                }
            }
    
            // If points is already an array, just assign it to the model without decoding
            if (is_array($points)) {
                $form->model()->points = $points;
            }
        });
    
        // Ensure points are properly encoded as JSON when saving
        $form->saving(function (Form $form) {
            if (!$form->isEditing()) {
                $form->model()->vId = (new \Illuminate\Support\Str())->random(3) . (new \Illuminate\Support\Str())->random(3, '0123456789');
            }
        });

        // echo $form->render();
        return $form;
    }
}