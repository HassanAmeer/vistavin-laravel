<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class downloadedDoc extends Model
{
    use SoftDeletes;

    protected $table = 'downloadedDoc';
    protected $fillable = [
        'id',
        'vId',
        'orderType',
        'status',
        'userName',
        'email',
        'phone',
        'type',
        'package',
        'transactionId',
        'cardNumber',
        'vehicleType',
        'make',
        'model',
        'vImg',
        'bodyStyle',
        'price',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function byvid()
    {
        return $this->belongsTo(vehicleHistoryReports::class, 'vId', 'vId');
    }
}