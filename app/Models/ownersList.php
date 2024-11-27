<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ownersList extends Model
{
    use SoftDeletes;

    protected $table = 'ownersList';
    protected $casts = [
        'details' =>'json',
        // 'details' =>'array',
    ];


    public function byvid()
    {
        return $this->belongsTo(vehicleHistoryReports::class, 'vId', 'vId');
    }
    
}