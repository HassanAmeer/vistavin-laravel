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

    public function additionalh()
    {
        // return $this->hasMany(additionalHistory::class); 
        return $this->belongsTo(additionalHistory::class,'vId');
    }
    
    public function ownershiph()
    {
        // return $this->hasMany(ownershipHistory::class); 
        return $this->belongsTo(ownershipHistory::class,'vId');
    }

    public function titleh()
    {
        // return $this->hasMany(titleHistory::class); 
        return $this->belongsTo(titleHistory::class,'vId');
    }
    
    public function ownerslisth()
    {
        return $this->hasMany(ownersList::class,"vId"); 
    }
}