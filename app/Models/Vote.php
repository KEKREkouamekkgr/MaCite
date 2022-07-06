<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Vote
 *
 * @property int $id
 * @property int $IdUser
 * @property int $IdOption
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Option $option
 * @property User $user
 *
 * @package App\Models
 */
class Vote extends Model
{

    use HasFactory, SoftDeletes;
	protected $table = 'votes';

	protected $casts = [
		'IdUser' => 'int',
		'IdOption' => 'int'
	];

	protected $fillable = ['IdUser','IdOption'];

	public function option()
	{
		return $this->belongsTo(Option::class, 'IdOption');
	}

	public function user()
	{
		return $this->belongsTo(User::class, 'IdUser');
	}
}
