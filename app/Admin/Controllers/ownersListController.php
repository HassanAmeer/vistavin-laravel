<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\ownersList;
use \App\Models\vehicleHistoryReports;


class ownersListController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'ownersList';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ownersList());

        $grid->filter(function ($filter) {
            $filter->equal('vId', 'Vehicle Name')->select(vehicleHistoryReports::all()->pluck('vName','vId'));
        });
        
        $grid->column('id', __('Id'));
        $grid->column('vId', __('Vehicle Id#'))->color("silver");
               
        $grid->column('vName', 'Vehicle Name')->display(function () {
            $vhr = $this->byvid; 
            if ($vhr) {
                return <<<HTML
                    <img src="{$this->baseUrl}/uploads/{$vhr->vImg}" alt="User Image" onerror="this.src='https:\/\/static.vecteezy.com\/system\/resources\/previews\/027\/538\/857\/non_2x\/electric-vehicle-car-icon-outline-car-outline-drawing-vector.jpg'" style="width: 70px; height: 50px; "/>
                    <div style="margin-bottom: 10px;">
                    <a class="icon-eye" target="_blank" href="{$this->baseUrl}/admin/vehicle-history-reports/{$vhr->id}" style="text-decoration:none; color:#0090b4;"></a> <span class="user-name" id="name-{$vhr->id}">{$vhr->vName}</span>.
                    </div>
                HTML;
            }
            return '<span> Empty </span>';
        })->color('#0090b4');



        $grid->column('ownerNo', __('Owner No'))->badge($style = 'dark');
        
        $grid->column('purchased', __('Purchased'));
        $grid->column('subtitle', __('Subtitle'));
        // $grid->column('details', __('Details'));
        $grid->column('details', __('(Owners Details)'))->display(function ($details) {
            if (is_string($details)) {
                $decoded = json_decode($details, true);
                if (is_array($decoded)) {
                    $listItems = '';
                    foreach ($decoded as $key => $value) {
                        $listItems .= '<span style="color: grey;">‣ ' . ($key) . '______.</span><li style="color:indigo;">Date: <span style="color:silver;">Date</span>: ' . $value['date'] . ', </li><li style="color:indigo;"><span style="color:silver;">Mileage</span>: ' . $value['mileage'] . ', </li><li style="color:indigo;"><span style="color:silver;">Source</span>: ' . $value['source'] . ', </li><li style="color:indigo;"><span style="color:silver;">Comments</span>: ' . $value['comments'] . '</li>';
                    }
                    return '<ul>' . $listItems . '</ul>';
                }
            }
            if (is_array($details)) {
                $listItems = '';
                foreach ($details as $key => $value) {
                    $listItems .= '<span style="color: grey;">‣ ' . $key .  '______</span><li style="color:indigo;"><span style="color:silver;">Date</span>: ' . $value['date'] . ', </li><li style="color:indigo;"><span style="color:silver;">Mileage</span>: ' . $value['mileage'] . ', </li><li style="color:indigo;"><span style="color:silver;">Source</span>: ' . $value['source'] . ', </li><li style="color:indigo;"><span style="color:silver;">Comments</span>: ' . $value['comments'] . '</li>';
                }
                return '<ul>' . $listItems . '</ul>';
            }
                    return '<ul><li>' . __('(Empty)') . '</li></ul>';
        })
        ->style('min-width:40rem; white-space: normal; overflow: hidden; list-style-type: disc; color:indigo;');

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
        $show = new Show(ownersList::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('vId', __('Vehicle Id#'));
        // $show->field('vName', __('Vehicle Name'));
        $show->field('ownerNo', __('Owner No'));
        $show->field('purchased', __('Purchased'));
        $show->field('subtitle', __('Subtitle'));
        // $show->field('details', __('Details'));
        // $show->field('details', __('Owners list 2'))->as(function ($details) {
        //     if (is_string($details)) {
        //         $decoded = json_decode($details, true);
        //         if (is_array($decoded)) {
        //             $listItems = implode(', ', $decoded);
        //             return $listItems;
        //         }
        //     }
        //     if (is_array($details)) {
        //         $listItems = implode(', ', $details);
        //         return $listItems;
        //     }   return 'No Details Available';
        // });
        
        $show->field('details', __('(Owners Details)'))->as(function ($details) {
            if (is_string($details)) {
                $decoded = json_decode($details, true);
                if (is_array($decoded)) {
                    $output = '<strong>Owners Details:</strong>';
                    $output .= '<table border="1" style="width: 100%; border-collapse: collapse; text-align: left;">';
                    $output .= '<thead>
                                    <tr>
                                        <th>Index</th>
                                        <th>Date</th>
                                        <th>Mileage</th>
                                        <th>Source</th>
                                        <th>Comments</th>
                                    </tr>
                                </thead>';
                    $output .= '<tbody>';
                    foreach ($decoded as $key => $value) {
                        $output .= '<tr>
                                        <td>' . ucfirst($key) . '</td>
                                        <td>' . $value['date'] . '</td>
                                        <td>' . $value['mileage'] . '</td>
                                        <td>' . $value['source'] . '</td>
                                        <td>' . $value['comments'] . '</td>
                                    </tr>';
                    }
                    $output .= '</tbody></table>';
                    return $output;
                }
            }
        
            if (is_array($details)) {
                $output = '<strong>Owners Details:</strong>';
                $output .= '<table style="width: 100%; border-collapse: collapse; text-align: left; background:whitesmoke; border: 0.5px solid indigo;">';
                $output .= '<thead>
                                <tr style="border: 0.5px solid indigo;">
                                    <th style="border: 0.5px solid indigo;">Index</th>
                                    <th style="border: 0.5px solid indigo;">Date</th>
                                    <th style="border: 0.5px solid indigo;">Mileage</th>
                                    <th style="border: 0.5px solid indigo;">Source</th>
                                    <th style="border: 0.5px solid indigo;">Comments</th>
                                </tr>
                            </thead>';
                $output .= '<tbody>';
                foreach ($details as $key => $value) {
                    $output .= '<tr style="border: 0.5px solid indigo;">
                                    <td style="border: 0.5px solid indigo;">' . ucfirst($key) . '</td>
                                    <td style="border: 0.5px solid indigo;">' . $value['date'] . '</td>
                                    <td style="border: 0.5px solid indigo;">' . $value['mileage'] . '</td>
                                    <td style="border: 0.5px solid indigo;">' . $value['source'] . '</td>
                                    <td style="border: 0.5px solid indigo;">' . $value['comments'] . '</td>
                                </tr>';
                }
                $output .= '</tbody></table>';
                return $output;
            }
        
            return '<p>' . __('(No Details Available)') . '</p>';
        })->unescape();
        


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
        $form = new Form(new ownersList());

        // $form->text('vId', __('Vehicle Id'));
        $form->select('vId', 'Select Vehicle')->options(vehicleHistoryReports::all()->pluck('vName', 'vId'))->rules('required');
        // $form->text('vName', __('Vehicle Name'));
        // $form->text('ownerNo', __('Owner No'));
        $form->select('ownerNo','Owner No')->options([1 => 'Owner 1', 2 => 'Owner 2', 3 => 'Owner 3', 4 => 'Owner 4', 5 => 'Owner 5', 6 => 'Owner 6', 7 => 'Owner 7', 8 => 'Owner 8', 9 => 'Owner 9', 10 => 'Owner 10']);

        $form->text('purchased', __('Purchased Year'));
        $form->text('subtitle', __('Subtitle'));
        
        
        $form->html('<hr>');
        $form->table('details', function ($table) {
            $table->date('date')->icon("icon-calendar-week");
            $table->text('mileage')->icon('icon-gas-pump');
            $table->text('source')->icon("icon-people-arrows");
            // $table->textarea('comments')->icon("icon-align-left");
            $table->textarea('comments');
        });
        // $form->text('details', __('Details'));
        
        $form->editing(function (Form $form) {
            $details = $form->model()->details;
    
            if (is_string($details)) {
                $decoded = json_decode($details, true);
                if (is_array($decoded)) {
                    $form->model()->details = $decoded;
                } else {
                    $form->model()->details = []; 
                }
            }
    
            if (is_array($details)) {
                $form->model()->details = $details;
            }
        });

        $form->saving(function (Form $form) {
            $form->model()->details = json_encode($form->model()->details);
        });
       

        return $form;
    }
}