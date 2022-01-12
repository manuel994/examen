<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use App\Empleado;
use App\Puesto;
use App\Estatus;
use Faker\Generator as Faker;

$factory->define(Empleado::class, function (Faker $faker) {
  $puestos = Puesto::all();
    $estatus = Estatus::all();
    return [
        'nombre' => $faker->firstName,
        'primer_apellido' => $faker->lastName,
        'segundo_apellido' => $faker->lastName,
        'salario_diario' => mt_rand(500, 1500 ),
        'id_puesto' =>  $faker->randomElement($puestos),
        'id_estatus' =>  $faker->randomElement($estatus),
        'email' => $faker->unique()->safeEmail,
    ];
});
