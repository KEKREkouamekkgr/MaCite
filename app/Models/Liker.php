<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Liker extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'liker';
    protected $key = 'id';
	protected $fillable = [
		'IdUser',
		'IdProposIdee',
	];


    public function user()
	{
		return $this->belongsTo(User::class,'IdUser','id');
	}

	public function proposIdee()
	{
		return $this->belongsTo(PropositionIdee::class,'IdProposIdee','id');
	}
}
