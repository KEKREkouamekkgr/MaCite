<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;
use App\Models\adminModels\Information;


class InformationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Information::factory()->count(10)->create();
    }
}
