<?php

namespace Database\Factories;

use App\Models\Boleia;
use App\Models\Model;
use Illuminate\Database\Eloquent\Factories\Factory;


class BoleiasFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Boleia::class;



    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $cidades = array();
        $idiomas = array();
        $carros = array();
        $cidades = array();
        $cidades = array();


        $v = rand(0,3);
        return [
            //
        ];
    }
}
