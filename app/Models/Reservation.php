<?php

namespace App\Models;

use App\Models\Paiement;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Reservation extends Model
{
    use HasFactory, SoftDeletes;

	protected $table = 'reservations';
	protected $casts = [
		'IdUser' => 'int',
        'IdPaiement'=>'int'
	];

	protected $fillable = [
		'IdUser' => 'int',
        'IdPaiement'=>'int',
        'numPlace'=>'int'
	];

	public function paiement()
	{
		return $this->belongsTo(Paiement::class,'IdPaiement','id');
	}

	public function user()
	{
		return $this->belongsTo(User::class, 'IdUser','id');
	}
}
