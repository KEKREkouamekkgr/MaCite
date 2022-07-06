<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Parking extends Model
{
    use HasFactory, SoftDeletes;

/**
 * Table properties
 */

    protected $table ='parkings';
    protected $primaryKey = 'id';

	protected $fillable = [
		'totalPlace',
		'IdCommune',
        'nomProprietaire',
        'nomParking'
	];


	public function commune()
	{
		return $this->belongsTo(Commune::class,'IdCommune','id');
	}

}
