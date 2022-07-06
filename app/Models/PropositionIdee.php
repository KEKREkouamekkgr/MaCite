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
 * Class PropositionIdee
 *
 * @property int $id
 * @property string $description
 * @property int $IdUser
 * @property int $IdDomaine
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * @property string|null $deleted_at
 *
 * @property Domaine $domaine
 * @property User $user
 * @property Collection|Reagir[] $reagirs
 *
 * @package App\Models
 */
class PropositionIdee extends Model
{
	use SoftDeletes;
	protected $table = 'proposition_idees';
	protected $casts = [
		'IdUser' => 'int',
        'IdTheme'=>'int'
	];

	protected $fillable = [
		'description',
		'IdUser',
		'IdTheme',
        'IdUserLiker'
	];

	public function theme()
	{
		return $this->belongsTo(Theme::class,'IdTheme','id');
	}

	public function user()
	{
		return $this->belongsTo(User::class, 'IdUser','id');
	}

    public function liker()
	{
		return $this->hasMany(Liker::class, 'IdLiker');
	}
}
