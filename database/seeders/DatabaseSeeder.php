<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Database\Seeders\InformationSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\adminModels\Information::factory(10)->create();

        $this->call(
            InformationSeeder::class
        );
    }
}
