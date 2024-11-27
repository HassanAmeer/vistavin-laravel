<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class additionalHistory extends Model
{
    use SoftDeletes;

    protected $table = 'additionalHistory';
    
    // protected $fillable = [
    //     'vId',
    //     'totalLossOwners',
    //     'structuredDamageOwners',
    //     'airBagDeploymentOwners',
    //     'odoMeterCheckOwners',
    //     'accidentDamageOwners',
    //     'manufacturerRecallOwners',
    //     'basicWarrantyOwners',
    // ];
    
    protected $casts = [
        'totalLossOwners' =>'json',
        'structuredDamageOwners' =>'json',
        'airBagDeploymentOwners' =>'json',
        'odoMeterCheckOwners' =>'json',
        'accidentDamageOwners' =>'json',
        'manufacturerRecallOwners' =>'json',
        'basicWarrantyOwners' =>'json',
    ];

    public function byvid()
    {
        return $this->belongsTo(vehicleHistoryReports::class, 'vId', 'vId');
    }

    
}