<?php

use Illuminate\Database\Seeder;

class PuestosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('puestos')->insert([
            'descripcion' => 'Programador JR',
        ]);
        DB::table('puestos')->insert([
            'descripcion' => 'Programador SR',
        ]);
        DB::table('puestos')->insert([
            'descripcion' => 'Analista JR',
        ]);
        DB::table('puestos')->insert([
            'descripcion' => 'Analista SR',
        ]);
        DB::table('puestos')->insert([
            'descripcion' => 'Lider de Proyecto',
        ]);
    }
}
