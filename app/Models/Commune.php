<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Commune
 * 
 * @property int $id
 * @property string $nom
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * @property string|null $deleted_at
 * 
 * @property Collection|Parking[] $parkings
 * @property Collection|User[] $users
 *
 * @package App\Models
 */
class Commune extends Model
{
	use SoftDeletes;
	protected $table = 'communes';

	protected $fillable = [
		'nom'
	];

	public function parkings()
	{
		return $this->hasMany(Parking::class, 'IdCommune');
	}

	public function users()
	{
		return $this->hasMany(User::class, 'IdCommune');
	}
}
