<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use App\Models\Sondage;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Option
 *
 * @property int $id
 * @property string $libelle
 * @property string $point
 * @property int $IdSondage
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * @property User $user
 * @property Collection|Vote[] $votes
 *
 * @package App\Models
 */
class Option extends Model
{
    use SoftDeletes;

	protected $table = 'options';

	protected $fillable = [
		'libelle',
		'point',
		'IdSondage'
	];
	public function votes()
	{
		return $this->hasMany(Vote::class, 'IdOption');
	}

    public function sondage()
	{
		return $this->belongsTo(Sondage::class,'IdSondage');
	}

}
