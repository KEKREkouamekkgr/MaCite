<?php

namespace App\Models\adminModels;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class RolePermission extends Model
{
    use HasFactory, SoftDeletes;

  /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $table = "role_permissions";
    protected $fillable = [
        'idUser',
        'IdUtilisateur'
    ];


}
