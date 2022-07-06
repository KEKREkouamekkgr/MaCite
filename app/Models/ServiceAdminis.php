<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ServiceAdminis extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'service_adminis';
    protected $primaryKey = 'id';
	protected $fillable = [
        'codeUnique',
		'CopieImage',
		'statut',
        'nbreExemplaire',
        'jsonDonnee',
        'IdUser',
        'IdTypeService',
        'copieUnique'
	];

    protected $casts = [
       'jsonDonnee'=>'array',
       'copieUnique'=>'string'

    ];

    public function rules(){

        return [
            'jsonDonnee'=>'required|array'
        ];
    }
    public function user()
	{
		return $this->belongsTo(User::class, 'IdUser');
	}
    public function service()
	{
		return $this->belongsTo(TypeService::class,'IdTypeService');
	}



}
