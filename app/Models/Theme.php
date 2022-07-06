<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Theme extends Model
{
    use HasFactory, SoftDeletes;

	protected $table = 'themes';
    protected $key = 'id';

	protected $fillable = [
		'titre'
	];

	public function proposition_idees()
	{
		return $this->hasMany(PropositionIdee::class, 'IdTheme');
	}
}
