<?php

namespace App\Models\adminModels;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeInformation extends Model
{
    use HasFactory;

     /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $table = "type_informations";
    protected $fillable = [
        'id',
        'titre',
    ];


	public function information()
	{
		return $this->hasMany(Information::class, 'IdTypeInformation');
	}

	public function preferences()
	{
		return $this->hasMany(Preference::class, 'IdTypeInformation');
	}


}
