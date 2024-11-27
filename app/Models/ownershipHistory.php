<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ownershipHistory extends Model
{
    use SoftDeletes;

    protected $table = 'ownershipHistory';
    protected $casts = [
        'yearpurchasedowners' =>'json',
        'typeofowners' =>'json',
        'ownershiplengthowners' =>'json',
        'provincesowners' =>'json',
        'milesperyearowners' =>'json',
        'lastodometerreadingowners' =>'json',
        // 'details' =>'array',
    ];

    public function byvid()
    {
        return $this->belongsTo(vehicleHistoryReports::class, 'vId', 'vId');
    }

}