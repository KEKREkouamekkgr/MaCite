<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mapping extends Model
{
    use HasFactory;

/**
 * Table properties
 */

protected $table ='mappings';
protected $primaryKey = 'id';

protected $fillable = [
    'nomProprietaire',
    'prenomProprietaire',
    'numTel',
    'image',
    'nomEntreprise',
    'descripActivite',
    'jsonDonnee',
    'latitude',
    'longitude',
    'IdResidant',
    'IdCategorie',
    'IdCommune',
    'IdUser'
];


        public function commune()
        {
            return $this->belongsTo(Commune::class,'IdCommune','id');
        }

        public function categorie()
        {
             return $this->belongsTo(Categorie::class,'IdCategorie','id');
        }
        public function user()
        {
            return $this->belongsTo(User::class, 'IdUser','id');
        }

        public function filter($builder, $value)
        {
            return $builder->where('type', $value);
        }

        protected $casts = [
            'jsonDonnee'=>'array',
         ];

         public function rules(){

             return [
                 'jsonDonnee'=>'required|array'
             ];
         }
}
