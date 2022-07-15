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
	protected $fillable = [
		'IdUser',
        'dateReservation',
        'heureStationnement',
        'heureSortie',
        'prix',
        'IdUserIndex',
        'IdPlaceParkingIndex',
        'created_at',
        'updated_at'
	];

}
