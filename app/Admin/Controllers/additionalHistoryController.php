<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\additionalHistory;
use \App\Models\vehicleHistoryReports;

class additionalHistoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Additional History';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new additionalHistory());
        
        $grid->filter(function ($filter) {
            $filter->equal('vId', 'Vehicle Name')->select(vehicleHistoryReports::all()->pluck('vName','vId'));
        });

        $grid->column('id', __('Id'));
        $grid->column('vId', __('Vehicle Id#'))->color("silver");
        // $grid->column('vName', __('Vehicle Name'));
        
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


        $grid->column('totalLoss', __('Total Loss'));
        // $grid->column('totalLossOwners', __('TotalLossOwners'));
        $grid->column('totalLossOwners', __('(Owners)'))->display(function ($totalLossOwners) {
            // Check if totalLossOwners is a valid JSON string or array
            if (is_string($totalLossOwners)) {
                // If totalLossOwners is a string, decode it from JSON
                $decoded = json_decode($totalLossOwners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet totalLossOwners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If totalLossOwners is already an array, just return it as an unordered list
            if (is_array($totalLossOwners)) {
                $listItems = implode('</li><li>', $totalLossOwners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid totalLossOwners found
            return '<ul><li>' . __('No totalLossOwners Available') . '</li></ul>';
        })
        ->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:#0090b4;');
        

        $grid->column('structuredDamage', __('Structural Damage'));
        // $grid->column('structuredDamageOwners', __('StructuredDamageOwners'));
        $grid->column('structuredDamageOwners', __('(Owners)'))->display(function ($structuredDamageOwners) {
            // Check if structuredDamageOwners is a valid JSON string or array
            if (is_string($structuredDamageOwners)) {
                // If structuredDamageOwners is a string, decode it from JSON
                $decoded = json_decode($structuredDamageOwners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet structuredDamageOwners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If structuredDamageOwners is already an array, just return it as an unordered list
            if (is_array($structuredDamageOwners)) {
                $listItems = implode('</li><li>', $structuredDamageOwners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid structuredDamageOwners found
            return '<ul><li>' . __('No structuredDamageOwners Available') . '</li></ul>';
        })
        ->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:#0090b4;');
        
        $grid->column('airBagDeployment', __('Air Bag Deployment'));
        // $grid->column('airBagDeploymentOwners', __('AirBagDeploymentOwners'));
        $grid->column('airBagDeploymentOwners', __('(Owners)'))->display(function ($airBagDeploymentOwners) {
            // Check if airBagDeploymentOwners is a valid JSON string or array
            if (is_string($airBagDeploymentOwners)) {
                // If airBagDeploymentOwners is a string, decode it from JSON
                $decoded = json_decode($airBagDeploymentOwners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet airBagDeploymentOwners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If airBagDeploymentOwners is already an array, just return it as an unordered list
            if (is_array($airBagDeploymentOwners)) {
                $listItems = implode('</li><li>', $airBagDeploymentOwners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid airBagDeploymentOwners found
            return '<ul><li>' . __('No airBagDeploymentOwners Available') . '</li></ul>';
        })
         ->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:#0090b4;');

        
        $grid->column('odoMeterCheck', __('Odo Meter Check'));
        // $grid->column('odoMeterCheckOwners', __('OdoMeterCheckOwners'));
        $grid->column('odoMeterCheckOwners', __('(Owners)'))->display(function ($odoMeterCheckOwners) {
            // Check if odoMeterCheckOwners is a valid JSON string or array
            if (is_string($odoMeterCheckOwners)) {
                // If odoMeterCheckOwners is a string, decode it from JSON
                $decoded = json_decode($odoMeterCheckOwners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet odoMeterCheckOwners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If odoMeterCheckOwners is already an array, just return it as an unordered list
            if (is_array($odoMeterCheckOwners)) {
                $listItems = implode('</li><li>', $odoMeterCheckOwners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid odoMeterCheckOwners found
            return '<ul><li>' . __('No odoMeterCheckOwners Available') . '</li></ul>';
        })
         ->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:#0090b4;');


        $grid->column('accidentDamage', __('Accident Damage'));
        // $grid->column('accidentDamageOwners', __('AccidentDamageOwners'));
        $grid->column('accidentDamageOwners', __('(Owners)'))->display(function ($accidentDamageOwners) {
            // Check if accidentDamageOwners is a valid JSON string or array
            if (is_string($accidentDamageOwners)) {
                // If accidentDamageOwners is a string, decode it from JSON
                $decoded = json_decode($accidentDamageOwners, true);
                // If decoding was successful, display the array values
                if (is_array($decoded)) {
                    // Convert the array to an unordered list with bullet accidentDamageOwners
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            // If accidentDamageOwners is already an array, just return it as an unordered list
            if (is_array($accidentDamageOwners)) {
                $listItems = implode('</li><li>', $accidentDamageOwners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            // Default case if no valid accidentDamageOwners found
            return '<ul><li>' . __('No accidentDamageOwners Available') . '</li></ul>';
        })
         ->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:#0090b4;');

        $grid->column('manufacturerRecall', __('Manufacturer Recall'));
        // $grid->column('manufacturerRecallOwners', __('ManufacturerRecallOwners'));
        $grid->column('manufacturerRecallOwners', __('(Owners)'))->display(function ($manufacturerRecallOwners) {
            if (is_string($manufacturerRecallOwners)) {
                $decoded = json_decode($manufacturerRecallOwners, true);
                if (is_array($decoded)) {
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            if (is_array($manufacturerRecallOwners)) {
                $listItems = implode('</li><li>', $manufacturerRecallOwners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            return '<ul><li>' . __('No manufacturerRecallOwners Available') . '</li></ul>';
        })
        ->width(200) 
         ->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:#0090b4;');



        $grid->column('basicWarranty', __('Basic Warranty'));
        // $grid->column('basicWarrantyOwners', __('BasicWarrantyOwners'));
        $grid->column('basicWarrantyOwners', __('(Owners)'))->display(function ($basicWarrantyOwners) {
            if (is_string($basicWarrantyOwners)) {
                $decoded = json_decode($basicWarrantyOwners, true);
                if (is_array($decoded)) {
                    $listItems = implode('</li><li>', $decoded);
                    return '<ul><li>' . $listItems . '</li></ul>';
                }
            }
        
            if (is_array($basicWarrantyOwners)) {
                $listItems = implode('</li><li>', $basicWarrantyOwners);
                return '<ul><li>' . $listItems . '</li></ul>';
            }
        
            return '<ul><li>' . __('No basicWarrantyOwners Available') . '</li></ul>';
        })
        ->width(200) 
         ->style('min-width:35rem; white-space: normal; overflow: hidden; list-style-type: disc; color:#0090b4;');


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
        $show = new Show(additionalHistory::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('vId', __('Vehicle Id'));
        $show->field('vName', __('Vehicle Name'));
        
        $show->divider();
        $show->field('totalLoss', __('Total Loss'));
        // $show->field('totalLossOwners', __('TotalLossOwners'));
        $show->field('totalLossOwners', __('(Owners)'))->as(function ($totalLossOwners) {
            if (is_string($totalLossOwners)) {
                $decoded = json_decode($totalLossOwners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($totalLossOwners)) {
                $listItems = implode(', ', $totalLossOwners);
                return $listItems;
            }   return 'Empty (Owners) ';
        });

               $show->divider();
               $show->field('structuredDamage', __('Structural Damage'));
        // $show->field('structuredDamageOwners', __('StructuredDamageOwners'));
        $show->field('structuredDamageOwners', __('(Owners)'))->as(function ($structuredDamageOwners) {
            if (is_string($structuredDamageOwners)) {
                $decoded = json_decode($structuredDamageOwners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($structuredDamageOwners)) {
                $listItems = implode(', ', $structuredDamageOwners);
                return $listItems;
            }   return 'Empty (Owners) ';
        });

               $show->divider();

        
        $show->field('airBagDeployment', __('Air Bag Deployment'));
        // $show->field('airBagDeploymentOwners', __('AirBagDeploymentOwners'));
        $show->field('airBagDeploymentOwners', __('(Owners)'))->as(function ($airBagDeploymentOwners) {
            if (is_string($airBagDeploymentOwners)) {
                $decoded = json_decode($airBagDeploymentOwners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($airBagDeploymentOwners)) {
                $listItems = implode(', ', $airBagDeploymentOwners);
                return $listItems;
            }   return 'Empty (Owners) ';
        });

               $show->divider();

        
        $show->field('odoMeterCheck', __('Odo Meter Check'));
        // $show->field('odoMeterCheckOwners', __('OdoMeterCheckOwners'));
        $show->field('odoMeterCheckOwners', __('(Owners)'))->as(function ($odoMeterCheckOwners) {
            if (is_string($odoMeterCheckOwners)) {
                $decoded = json_decode($odoMeterCheckOwners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($odoMeterCheckOwners)) {
                $listItems = implode(', ', $odoMeterCheckOwners);
                return $listItems;
            }   return 'Empty (Owners) ';
        });

               $show->divider();

        $show->field('accidentDamage', __('Accident Damage'));
        // $show->field('accidentDamageOwners', __('AccidentDamageOwners'));
        $show->field('accidentDamageOwners', __('(Owners)'))->as(function ($accidentDamageOwners) {
            if (is_string($accidentDamageOwners)) {
                $decoded = json_decode($accidentDamageOwners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($accidentDamageOwners)) {
                $listItems = implode(', ', $accidentDamageOwners);
                return $listItems;
            }   return 'Empty (Owners) ';
        });
    

        $show->divider();
        $show->field('manufacturerRecall', __('Manufacturer Recall'));
        // $show->field('manufacturerRecallOwners', __('ManufacturerRecallOwners'));
        $show->field('manufacturerRecallOwners', __('(Owners)'))->as(function ($manufacturerRecallOwners) {
            if (is_string($manufacturerRecallOwners)) {
                $decoded = json_decode($manufacturerRecallOwners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($manufacturerRecallOwners)) {
                $listItems = implode(', ', $manufacturerRecallOwners);
                return $listItems;
            }   return 'Empty (Owners) ';
        });
    

        $show->divider();
        $show->field('basicWarranty', __('Basic Warranty'));
        // $show->field('basicWarrantyOwners', __('BasicWarrantyOwners'));
        $show->field('basicWarrantyOwners', __('(Owners)'))->as(function ($basicWarrantyOwners) {
            if (is_string($basicWarrantyOwners)) {
                $decoded = json_decode($basicWarrantyOwners, true);
                if (is_array($decoded)) {
                    $listItems = implode(', ', $decoded);
                    return $listItems;
                }
            }
            if (is_array($basicWarrantyOwners)) {
                $listItems = implode(', ', $basicWarrantyOwners);
                return $listItems;
            }   return 'Empty (Owners) ';
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
    $form = new Form(new additionalHistory());

    // $form->text('vId', __('Vehicle Id'))->width(6);
    $form->select('vId', 'Select Vehicle')->options(vehicleHistoryReports::all()->pluck('vName', 'vId'))->rules('required');
    
    // $form->text('vName', __('Vehicle Name'))->width(6);
    // $form->text('vName', __('Vehicle Name'))->value(function ($form) {
    //     $vehicle = vehicleHistoryReports::where('vId', $form->model()->vId)->first();
    //     if ($vehicle) {
    //         return $vehicle->vehicleName;
    //     }
    //     return '';
    // })->width(6);


    $form->html('<p style="color: orange; font-weight: bold; margin-top: 20px;"> List of owners details should be same </p>');
    $form->html('<h3 style="color: silver; font-weight: bold; margin-top: 20px;">Loss Information</h3>');

    $form->text('totalLoss', __('Total Loss'))
         ->help('Specify the total loss incurred.')
         ->width(6);
    $form->list('totalLossOwners', __('(Owners)'))
         ->sortable();

     $form->editing(function (Form $form) {
        $totalLossOwners = $form->model()->totalLossOwners;
        if (is_string($totalLossOwners)) {
            $decoded = json_decode($totalLossOwners, true);
            if (is_array($decoded)) {
                $form->model()->totalLossOwners = $decoded;
            } else {
                $form->model()->totalLossOwners = [];
            }
        }
        if (is_array($totalLossOwners)) {
            $form->model()->totalLossOwners = $totalLossOwners;
        }
    });

         
         $form->html('<hr>');
    $form->html('<h3 style="color: silver; font-weight: bold; margin-top: 20px;">Structural Damage Details</h3>');
    $form->text('structuredDamage', __('Structural Damage'))
         ->width(6);
    $form->list('structuredDamageOwners', __('(Owners)'))
         ->sortable();
    $form->editing(function (Form $form) {
        $structuredDamageOwners = $form->model()->structuredDamageOwners;
        if (is_string($structuredDamageOwners)) {
            $decoded = json_decode($structuredDamageOwners, true);
            if (is_array($decoded)) {
                $form->model()->structuredDamageOwners = $decoded;
            } else {
                $form->model()->structuredDamageOwners = [];
            }
        }
        if (is_array($structuredDamageOwners)) {
            $form->model()->structuredDamageOwners = $structuredDamageOwners;
        }
    });



         $form->html('<hr>');
    $form->html('<h3 style="color: silver; font-weight: bold; margin-top: 20px;">Airbag Information</h3>');
    $form->text('airBagDeployment', __('Air Bag Deployment'))
         ->width(6);
    $form->list('airBagDeploymentOwners', __('(Owners)'))
         ->sortable();
    $form->editing(function (Form $form) {
        $airBagDeploymentOwners = $form->model()->airBagDeploymentOwners;
        if (is_string($airBagDeploymentOwners)) {
            $decoded = json_decode($airBagDeploymentOwners, true);
            if (is_array($decoded)) {
                $form->model()->airBagDeploymentOwners = $decoded;
            } else {
                $form->model()->airBagDeploymentOwners = [];
            }
        }
        if (is_array($airBagDeploymentOwners)) {
            $form->model()->airBagDeploymentOwners = $airBagDeploymentOwners;
        }
    });

         $form->html('<hr>');
    $form->html('<h3 style="color: silver; font-weight: bold; margin-top: 20px;">Odometer and Accident Details</h3>');
    $form->text('odoMeterCheck', __('Odo Meter Check'))
         ->width(6);
    $form->list('odoMeterCheckOwners', __('(Owners)'))
         ->sortable();
    $form->editing(function (Form $form) {
        $odoMeterCheckOwners = $form->model()->odoMeterCheckOwners;
        if (is_string($odoMeterCheckOwners)) {
            $decoded = json_decode($odoMeterCheckOwners, true);
            if (is_array($decoded)) {
                $form->model()->odoMeterCheckOwners = $decoded;
            } else {
                $form->model()->odoMeterCheckOwners = [];
            }
        }
        if (is_array($odoMeterCheckOwners)) {
            $form->model()->odoMeterCheckOwners = $odoMeterCheckOwners;
        }
    });


         $form->html('<hr>');
         $form->html('<h3 style="color: silver; font-weight: bold; margin-top: 20px;">Accident Damage</h3>');
    $form->text('accidentDamage', __('Accident Damage'))
         ->width(6);
    $form->list('accidentDamageOwners', __('(Owners)'))
         ->sortable();
    $form->editing(function (Form $form) {
        $accidentDamageOwners = $form->model()->accidentDamageOwners;
        if (is_string($accidentDamageOwners)) {
            $decoded = json_decode($accidentDamageOwners, true);
            if (is_array($decoded)) {
                $form->model()->accidentDamageOwners = $decoded;
            } else {
                $form->model()->accidentDamageOwners = [];
            }
        }
        if (is_array($accidentDamageOwners)) {
            $form->model()->accidentDamageOwners = $accidentDamageOwners;
        }
    });



         $form->html('<hr>');
    $form->html('<h3 style="color: silver; font-weight: bold; margin-top: 20px;">Manufacturer and Warranty</h3>');
    $form->text('manufacturerRecall', __('Manufacturer Recall'))
         ->width(6);
    $form->list('manufacturerRecallOwners', __('(Owners)'))
         ->sortable();
    $form->editing(function (Form $form) {
        $manufacturerRecallOwners = $form->model()->manufacturerRecallOwners;
        if (is_string($manufacturerRecallOwners)) {
            $decoded = json_decode($manufacturerRecallOwners, true);
            if (is_array($decoded)) {
                $form->model()->manufacturerRecallOwners = $decoded;
            } else {
                $form->model()->manufacturerRecallOwners = [];
            }
        }
        if (is_array($manufacturerRecallOwners)) {
            $form->model()->manufacturerRecallOwners = $manufacturerRecallOwners;
        }
    });


         $form->html('<hr>');
         $form->html('<h3 style="color: silver; font-weight: bold; margin-top: 20px;">Basic Warranty</h3>');
    $form->text('basicWarranty', __('Basic Warranty'))
         ->width(6);
    $form->list('basicWarrantyOwners', __('(Owners)'))
         ->sortable();
    $form->editing(function (Form $form) {
        $basicWarrantyOwners = $form->model()->basicWarrantyOwners;
        if (is_string($basicWarrantyOwners)) {
            $decoded = json_decode($basicWarrantyOwners, true);
            if (is_array($decoded)) {
                $form->model()->basicWarrantyOwners = $decoded;
            } else {
                $form->model()->basicWarrantyOwners = [];
            }
        }
        if (is_array($basicWarrantyOwners)) {
            $form->model()->basicWarrantyOwners = $basicWarrantyOwners;
        }
    });

    return $form;
 }

}