<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class TypeService extends Model
{

    use HasFactory, SoftDeletes;

    protected $table ='type_services';
    protected $primaryKey = 'id';
	protected $fillable = [
        'typeService'
	];







}
