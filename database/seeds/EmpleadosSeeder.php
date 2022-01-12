<?php

use Illuminate\Database\Seeder;

class EmpleadosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        $empleados = factory(App\Empleado::class, 100)->make();
        foreach ($empleados as $empleado) {
          $empleado->save();
        }

    }
}
