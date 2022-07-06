<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ExtraitNaissance extends Model
{
    use HasFactory;
    use SoftDeletes;
	protected $table = 'projets';

	protected $fillable = [
		'titre',
		'description'
	];

	public function collectes()
	{
		return $this->hasMany(Collecte::class, 'IdProjet');
	}
}
