<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class titleHistory extends Model
{
    use SoftDeletes;

    protected $table = 'titleHistory';

    protected $casts = [
        'titles' =>'json',
        'ownerslist1' =>'json',
        'ownerslist2' =>'json',
        'ownerslist3' =>'json',
        // 'details' =>'array',
    ];


    public function byvid()
    {
        return $this->belongsTo(vehicleHistoryReports::class, 'vId', 'vId');
    }
}