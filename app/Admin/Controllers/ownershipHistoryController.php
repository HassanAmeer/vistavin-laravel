<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\ownershipHistory;
use \App\Models\vehicleHistoryReports;

class ownershipHistoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Ownership History';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ownershipHistory());
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



        
        
        $grid->column('yearpurchased', __('Year Purchased'));
        // $grid->column('yearpurchasedowners', __('Yearpurchasedowners'));
        $grid->column('yearpurchasedowners', __('(Owners)'))->display(function ($yearpurchasedowners) {
            // Check if yearpurchasedowners is a valid JSON string or array
            if (is_string($yearpurchasedowners)) {
                // If yearpurchasedowners is a string, decode it from JSON
                $decoded = json_decode($yearpurchasedowners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet yearpurchasedowners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If yearpurchasedowners is already an array, just return it as an unordered list
            if (is_array($yearpurchasedowners)) {
                $listItems = implode('</li><li>', $yearpurchasedowners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid yearpurchasedowners found
            return '<ul><li>' . __('No Year of purchased list Available') . '</li></ul>';
        })->style('min-width:25rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        


        

        $grid->column('typeofowner', __('Type Of Owner'));
        // $grid->column('typeofowners', __('Typeofowners'));
        $grid->column('typeofowners', __('(Owners)'))->display(function ($typeofowners) {
            // Check if typeofowners is a valid JSON string or array
            if (is_string($typeofowners)) {
                // If typeofowners is a string, decode it from JSON
                $decoded = json_decode($typeofowners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet typeofowners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If typeofowners is already an array, just return it as an unordered list
            if (is_array($typeofowners)) {
                $listItems = implode('</li><li>', $typeofowners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid typeofowners found
            return '<ul><li>' . __('No Type of owners list Available') . '</li></ul>';
        })
       ->style('min-width:25rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        




        $grid->column('ownershiplength', __('Ownership Length'));
        // $grid->column('ownershiplengthowners', __('Ownershiplengthowners'));
        $grid->column('ownershiplengthowners', __('(Owners)'))->display(function ($ownershiplengthowners) {
            // Check if ownershiplengthowners is a valid JSON string or array
            if (is_string($ownershiplengthowners)) {
                // If ownershiplengthowners is a string, decode it from JSON
                $decoded = json_decode($ownershiplengthowners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet ownershiplengthowners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If ownershiplengthowners is already an array, just return it as an unordered list
            if (is_array($ownershiplengthowners)) {
                $listItems = implode('</li><li>', $ownershiplengthowners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid ownershiplengthowners found
            return '<ul><li>' . __('No Ownership list Available') . '</li></ul>';
        })
       ->style('min-width:25rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        




        $grid->column('provinces', __('Provinces'));
        // $grid->column('provincesowners', __('Provincesowners'));
        $grid->column('provincesowners', __('(Owners)'))->display(function ($provincesowners) {
            // Check if provincesowners is a valid JSON string or array
            if (is_string($provincesowners)) {
                // If provincesowners is a string, decode it from JSON
                $decoded = json_decode($provincesowners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet provincesowners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If provincesowners is already an array, just return it as an unordered list
            if (is_array($provincesowners)) {
                $listItems = implode('</li><li>', $provincesowners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid provincesowners found
            return '<ul><li>' . __('No provinces list Available') . '</li></ul>';
        })
       ->style('min-width:25rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        





        $grid->column('milesperyear', __('Miles Per Year'));
        // $grid->column('milesperyearowners', __('Milesperyearowners'));
        $grid->column('milesperyearowners', __('(Owners)'))->display(function ($milesperyearowners) {
            // Check if milesperyearowners is a valid JSON string or array
            if (is_string($milesperyearowners)) {
                // If milesperyearowners is a string, decode it from JSON
                $decoded = json_decode($milesperyearowners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet milesperyearowners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If milesperyearowners is already an array, just return it as an unordered list
            if (is_array($milesperyearowners)) {
                $listItems = implode('</li><li>', $milesperyearowners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid milesperyearowners found
            return '<ul><li>' . __('No miles per year list Available') . '</li></ul>';
        })
       ->style('min-width:25rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        





        $grid->column('lastodometerreading', __('Last Odo Meter Reading'));
        // $grid->column('lastodometerreadingowners', __('Lastodometerreadingowners'));
        $grid->column('lastodometerreadingowners', __('(Owners)'))->display(function ($lastodometerreadingowners) {
            // Check if lastodometerreadingowners is a valid JSON string or array
            if (is_string($lastodometerreadingowners)) {
                // If lastodometerreadingowners is a string, decode it from JSON
                $decoded = json_decode($lastodometerreadingowners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet lastodometerreadingowners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If lastodometerreadingowners is already an array, just return it as an unordered list
            if (is_array($lastodometerreadingowners)) {
                $listItems = implode('</li><li>', $lastodometerreadingowners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid lastodometerreadingowners found
            return '<ul><li>' . __('No last meter reading list Available') . '</li></ul>';
        })
        ->style('min-width:25rem; white-space: normal; overflow: hidden; list-style-type: disc; color:silver;');
        



        
        
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
        $show = new Show(ownershipHistory::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('yearpurchased', __('Puchased Year'));
        // $show->field('yearpurchasedowners', __('Yearpurchasedowners'));
        $show->field('yearpurchasedowners', __('(Owners)'))->as(function ($yearpurchasedowners) {
            if (is_string($yearpurchasedowners)) {
                $decoded = json_decode($yearpurchasedowners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($yearpurchasedowners)) {
                $listItems = implode(', ', $yearpurchasedowners);
                return $listItems;
            }   return 'No Purchases Available';
        });

        $show->divider();
        $show->field('typeofowner', __('Type Of Owner'));
        // $show->field('typeofowners', __('Typeofowners'));
        $show->field('typeofowners', __('(Owners)'))->as(function ($typeofowners) {
            if (is_string($typeofowners)) {
                $decoded = json_decode($typeofowners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($typeofowners)) {
                $listItems = implode(', ', $typeofowners);
                return $listItems;
            }   return 'No Owners Types Available';
        });



        $show->divider();
        $show->field('ownershiplength', __('Ownership Length'));
        // $show->field('ownershiplengthowners', __('Ownershiplengthowners'));
        $show->field('ownershiplengthowners', __('(Owners)'))->as(function ($ownershiplengthowners) {
            if (is_string($ownershiplengthowners)) {
                $decoded = json_decode($ownershiplengthowners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($ownershiplengthowners)) {
                $listItems = implode(', ', $ownershiplengthowners);
                return $listItems;
            }   return 'No Ownership Available';
        });

        $show->divider();
        $show->field('provinces', __('Provinces'));
        // $show->field('provincesowners', __('Provincesowners'));
        $show->field('provincesowners', __('(Owners)'))->as(function ($provincesowners) {
            if (is_string($provincesowners)) {
                $decoded = json_decode($provincesowners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($provincesowners)) {
                $listItems = implode(', ', $provincesowners);
                return $listItems;
            }   return 'No provinces Available';
        });

        $show->divider();
        $show->field('milesperyear', __('Miles Per Year'));
        // $show->field('milesperyearowners', __('Milesperyearowners'));
        $show->field('milesperyearowners', __('(Owners)'))->as(function ($milesperyearowners) {
            if (is_string($milesperyearowners)) {
                $decoded = json_decode($milesperyearowners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($milesperyearowners)) {
                $listItems = implode(', ', $milesperyearowners);
                return $listItems;
            }   return 'No Miles Per Year Available';
        });

        $show->divider();
        $show->field('lastodometerreading', __('Last Odo Meter Reading'));
        // $show->field('lastodometerreadingowners', __('Lastodometerreadingowners'));
        $show->field('lastodometerreadingowners', __('(Owners)'))->as(function ($lastodometerreadingowners) {
            if (is_string($lastodometerreadingowners)) {
                $decoded = json_decode($lastodometerreadingowners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($lastodometerreadingowners)) {
                $listItems = implode(', ', $lastodometerreadingowners);
                return $listItems;
            }   return 'No odo meter report Available';
        });
        
        $show->divider();
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
        $form = new Form(new ownershipHistory());
        $form->select('vId', 'Select Vehicle')->options(vehicleHistoryReports::all()->pluck('vName', 'vId'))->rules('required');
        
        $form->html('<hr>');
        $form->text('yearpurchased', __('Purchased Year'));
        // $form->text('yearpurchasedowners', __('Yearpurchasedowners'));
        $form->list('yearpurchasedowners',"Owners")->sortable();
        $form->editing(function (Form $form) {
            $yearpurchasedowners = $form->model()->yearpurchasedowners;
            if (is_string($yearpurchasedowners)) {
                $decoded = json_decode($yearpurchasedowners, true);
                if (is_array($decoded)) {
                    $form->model()->yearpurchasedowners = $decoded;
                } else {
                    $form->model()->yearpurchasedowners = []; 
                }
            }
    
            if (is_array($yearpurchasedowners)) {
                $form->model()->yearpurchasedowners = $yearpurchasedowners;
            }
        });

        $form->html('<hr>');
        $form->text('typeofowner', __('Type Of Owner'));
        // $form->text('typeofowners', __('Typeofowners'));
        $form->list('typeofowners',"Owners")->sortable();
        $form->editing(function (Form $form) {
            $typeofowners = $form->model()->typeofowners;
            if (is_string($typeofowners)) {
                $decoded = json_decode($typeofowners, true);
                if (is_array($decoded)) {
                    $form->model()->typeofowners = $decoded;
                } else {
                    $form->model()->typeofowners = []; 
                }
            }
    
            if (is_array($typeofowners)) {
                $form->model()->typeofowners = $typeofowners;
            }
        });

        $form->html('<hr>');
        $form->text('ownershiplength', __('Ownership Length'));
        // $form->text('ownershiplengthowners', __('Ownershiplengthowners'));
        $form->list('ownershiplengthowners',"Owners")->sortable();
        $form->editing(function (Form $form) {
            $ownershiplengthowners = $form->model()->ownershiplengthowners;
    
            
            if (is_string($ownershiplengthowners)) {
                $decoded = json_decode($ownershiplengthowners, true);
                if (is_array($decoded)) {
                    $form->model()->ownershiplengthowners = $decoded;
                } else {
                    $form->model()->ownershiplengthowners = []; 
                }
            }
    
            if (is_array($ownershiplengthowners)) {
                $form->model()->ownershiplengthowners = $ownershiplengthowners;
            }
        });

        $form->html('<hr>');
        $form->text('provinces', __('Provinces'));
        // $form->text('provincesowners', __('Provincesowners'));
        $form->list('provincesowners',"Owners")->sortable();
        $form->editing(function (Form $form) {
            $provincesowners = $form->model()->provincesowners;
    
            
            if (is_string($provincesowners)) {
                $decoded = json_decode($provincesowners, true);
                if (is_array($decoded)) {
                    $form->model()->provincesowners = $decoded;
                } else {
                    $form->model()->provincesowners = []; 
                }
            }
    
            if (is_array($provincesowners)) {
                $form->model()->provincesowners = $provincesowners;
            }
        });

        $form->html('<hr>');
        $form->text('milesperyear', __('Miles Per Year'));
        // $form->text('milesperyearowners', __('Milesperyearowners'));
        $form->list('milesperyearowners',"Owners")->sortable();
        $form->editing(function (Form $form) {
            $milesperyearowners = $form->model()->milesperyearowners;
    
            
            if (is_string($milesperyearowners)) {
                $decoded = json_decode($milesperyearowners, true);
                if (is_array($decoded)) {
                    $form->model()->milesperyearowners = $decoded;
                } else {
                    $form->model()->milesperyearowners = []; 
                }
            }
    
            if (is_array($milesperyearowners)) {
                $form->model()->milesperyearowners = $milesperyearowners;
            }
        });
        
        $form->html('<hr>');
        $form->text('lastodometerreading', __('Last Odo Meter Reading'));
        // $form->text('lastodometerreadingowners', __('Lastodometerreadingowners'));
        $form->list('lastodometerreadingowners',"Owners")->sortable();
        $form->editing(function (Form $form) {
            $lastodometerreadingowners = $form->model()->lastodometerreadingowners;
    
            
            if (is_string($lastodometerreadingowners)) {
                $decoded = json_decode($lastodometerreadingowners, true);
                if (is_array($decoded)) {
                    $form->model()->lastodometerreadingowners = $decoded;
                } else {
                    $form->model()->lastodometerreadingowners = []; 
                }
            }
    
            if (is_array($lastodometerreadingowners)) {
                $form->model()->lastodometerreadingowners = $lastodometerreadingowners;
            }
        });


        // $form->table('owners', 'Details', function ($table) {
        //     $table->text('title', 'Title')->required();
        
        //     $table->table('data', 'Owner Details', function ($nestedTable) {
        //         $nestedTable->text('milage', 'Milage')->required();
        //         $nestedTable->text('source', 'Source')->required();
        //     });
        // });
        
        
        

        return $form;
    }
}