<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;


class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('type_utilisateurs')->insert([
            'profil'=> 'admin',
                
        ]);

        DB::table('communes')->insert([
            'nom'=> 'ADJAME',
           
        ]);

        DB::table('users')->insert([
            'name'=> 'Kekre',
            'email'=> Str::random(10).'@gmail.com',
            'password'=> Hash::make('password'),
            'prenom'=> 'Kouamé Gboko roland',
            'phone'=> Str::random(10),
            'sexe'=>'M',
            'IdCommune'=> 1,
            'IdTypeUtilisateur'=> 1
            
        ]);
    }
}
