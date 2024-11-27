<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class glossary extends Model
{
    use SoftDeletes;

    protected $table = 'glossary';
}
