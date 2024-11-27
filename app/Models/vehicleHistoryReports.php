<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class vehicleHistoryReports extends Model
{
    use SoftDeletes;

    protected $table = 'vehicleHistoryReports';

    protected $fillable = [
        'vId',
        'vName',
    ];

    protected $casts = [
        'points' =>'json',
    ];

    public function ah()
    {
        return $this->hasMany(additionalHistory::class); 
    }
}