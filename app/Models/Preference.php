<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Preference extends Model
{
    use HasFactory;



    protected $table = "Preferences";
    protected $fillable = [
        'id',
        'IdUser',
        'IdTypeInformation'
    ];
}
