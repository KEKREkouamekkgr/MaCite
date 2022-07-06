<?php

namespace Database\Factories;
use App\Models\adminModels\Information;
use Illuminate\Database\Eloquent\Factories\Factory;

class InformationFactory extends Factory
{

    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Information::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'titre' => $this->faker->name(),
            'description' => $this->faker->text(50),
            'images' => $this->faker->imageUrl($width = 640, $height = 480) ,
            'IdTypeInformation' => 1,
            'IdUser' => 1,

        ];
    }
}
