<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\titleHistory;
use \App\Models\vehicleHistoryReports;

class titleHistoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Title History';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new titleHistory());
    
        $grid->filter(function ($filter) {
            $filter->equal('vId', 'Vehicle Name')->select(vehicleHistoryReports::all()->pluck('vName','vId'));
        });
        
        $grid->column('id', __('Id'));
        // $grid->column('vId', __('VId'));
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
            return '<span> No User </span>';
        })->color('#0090b4');

        // $grid->column('vName', __('VName'));
        $grid->column('title1', __('Title 1'));
        $grid->column('desc1', __('Description 1'))->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        $grid->column('ownerslist1', __('(Owners)'))->display(function ($ownerslist1) {
            // Check if ownerslist1 is a valid JSON string or array
            if (is_string($ownerslist1)) {
                // If ownerslist1 is a string, decode it from JSON
                $decoded = json_decode($ownerslist1, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet ownerslist1
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If ownerslist1 is already an array, just return it as an unordered list
            if (is_array($ownerslist1)) {
                $listItems = implode('</li><li>', $ownerslist1);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid ownerslist1 found
            return '<ul><li>' . __('No Owners list Available') . '</li></ul>';
        })
        ->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:black;');
        
        $grid->column('title2', __('Title 2'));
        $grid->column('desc2', __('Description 2'))->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        $grid->column('ownerslist2', __('(Owners)'))->display(function ($ownerslist2) {
            // Check if ownerslist2 is a valid JSON string or array
            if (is_string($ownerslist2)) {
                // If ownerslist2 is a string, decode it from JSON
                $decoded = json_decode($ownerslist2, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet ownerslist2
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If ownerslist2 is already an array, just return it as an unordered list
            if (is_array($ownerslist2)) {
                $listItems = implode('</li><li>', $ownerslist2);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid ownerslist2 found
            return '<ul><li>' . __('No Owners list Available') . '</li></ul>';
        })
        ->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:black;');
        
        $grid->column('title3', __('Title 3'));
        $grid->column('desc3', __('Description 3'))->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        $grid->column('ownerslist3', __('(Owners)'))->display(function ($ownerslist3) {
            // Check if ownerslist3 is a valid JSON string or array
            if (is_string($ownerslist3)) {
                // If ownerslist3 is a string, decode it from JSON
                $decoded = json_decode($ownerslist3, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet ownerslist3
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If ownerslist3 is already an array, just return it as an unordered list
            if (is_array($ownerslist3)) {
                $listItems = implode('</li><li>', $ownerslist3);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid ownerslist3 found
            return '<ul><li>' . __('No Owners list Available') . '</li></ul>';
        })
        ->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:black;');
        
        
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
        $show = new Show(titleHistory::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('vId', __('VId'));
        // $show->field('vName', __('VName'));
        $show->field('title1', __('Title 1'));
        $show->field('desc1', __('Description 1'));
        $show->field('ownerslist1', __('Owners list 1'))->as(function ($ownerslist1) {
            if (is_string($ownerslist1)) {
                $decoded = json_decode($ownerslist1, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($ownerslist1)) {
                $listItems = implode(', ', $ownerslist1);
                return $listItems;
            }   return 'No owners list Available';
        });
        $show->field('title2', __('Title 1'));
        $show->field('desc2', __('Description 2'));
        $show->field('ownerslist2', __('Owners list 2'))->as(function ($ownerslist2) {
            if (is_string($ownerslist2)) {
                $decoded = json_decode($ownerslist2, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($ownerslist2)) {
                $listItems = implode(', ', $ownerslist2);
                return $listItems;
            }   return 'No owners list Available';
        });
        $show->field('title3', __('Title 3'));
        $show->field('desc3', __('Description 3'));
        $show->field('ownerslist3', __('Owners list 3'))->as(function ($ownerslist3) {
            if (is_string($ownerslist3)) {
                $decoded = json_decode($ownerslist3, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($ownerslist3)) {
                $listItems = implode(', ', $ownerslist3);
                return $listItems;
            }   return 'No owners list Available';
        });

      
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
        $form = new Form(new titleHistory());

        // $form->text('vId', __('vId'));
        $form->select('vId', 'Select Vehicle')->options(vehicleHistoryReports::all()->pluck('vName', 'vId'))->rules('required');
        // $form->text('vName', __('Vehicle Name'));
        // $form->text('titles', __('Titles'));
        
        // $form->table('titles',"History points", function ($table) {
            //     $table->text('title', 'Title')->icon("icon-pen-alt"); 
            //     $table->text('desc', 'Description')->icon("icon-align-left"); 
            //     $table->list('owners',"Owners Details")->sortable();
            // });
            
        $form->html("<hr>");
        $form->text('title1', __('Title 1'));
        $form->text('desc1', __('Description 1'));
        $form->list('ownerslist1',"(Owners)")->sortable();

        $form->editing(function (Form $form) {
            $ownerslist1 = $form->model()->ownerslist1;
    
            
            if (is_string($ownerslist1)) {
                $decoded = json_decode($ownerslist1, true);
                if (is_array($decoded)) {
                    $form->model()->ownerslist1 = $decoded;
                } else {
                    $form->model()->ownerslist1 = []; 
                }
            }
    
            if (is_array($ownerslist1)) {
                $form->model()->ownerslist1 = $ownerslist1;
            }
        });

        $form->html("<hr>");
        $form->text('title2', __('Title 2'));
        $form->text('desc2', __('Description 2'));
        $form->list('ownerslist2',"(Owners)")->sortable();

        $form->editing(function (Form $form) {
            $ownerslist2 = $form->model()->ownerslist2;
    
            if (is_string($ownerslist2)) {
                $decoded = json_decode($ownerslist2, true);
                if (is_array($decoded)) {
                    $form->model()->ownerslist2 = $decoded;
                } else {
                    $form->model()->ownerslist2 = []; 
                }
            }
    
            if (is_array($ownerslist2)) {
                $form->model()->ownerslist2 = $ownerslist2;
            }
        });

        $form->html("<hr>");
        $form->text('title3', __('Title 3'))->default(" ");
        $form->text('desc3', __('Description 3'))->default(" ");
        $form->list('ownerslist3',"(Owners)")->sortable()->default(" ");
        $form->editing(function (Form $form) {
            $ownerslist3 = $form->model()->ownerslist3;
    
            if (is_string($ownerslist3)) {
                $decoded = json_decode($ownerslist3, true);
                if (is_array($decoded)) {
                    $form->model()->ownerslist3 = $decoded;
                } else {
                    $form->model()->ownerslist3 = []; 
                }
            }
    
            if (is_array($ownerslist3)) {
                $form->model()->ownerslist3 = $ownerslist3;
            }
        });
       
        return $form;
    }
}