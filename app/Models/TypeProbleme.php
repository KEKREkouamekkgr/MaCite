<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class TypeProbleme extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'type_problemes';
    protected $primaryKey = 'id';

	protected $fillable = [
	'titre'
	];

}
