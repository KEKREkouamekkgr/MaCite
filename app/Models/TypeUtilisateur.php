<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class TypeUtilisateur extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = "type_utilisateurs";
    protected $fillable = [
        'id',
        'profil'
    ];

     /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

	public function role_permissions()
	{
		return $this->hasMany(RolePermission::class, 'IdTypeUtilisateur');
	}

	public function users()
	{
		return $this->hasMany(User::class, 'IdTypeUtilisateur');
	}

}
