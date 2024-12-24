<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UsersMsgs extends Model
{
    use SoftDeletes;

    protected $table = 'UsersMsgs';

    protected $fillable = [
        'sid',
        'rid',
        'msg',
    ];
}