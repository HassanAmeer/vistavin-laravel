<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class contactUs extends Model
{
    protected $fillable = ['name', 'email', 'message'];
    protected $table = 'contactUs';
}