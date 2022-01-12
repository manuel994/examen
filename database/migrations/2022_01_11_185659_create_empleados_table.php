<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmpleadosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('empleados', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->string('primer_apellido');
            $table->string('segundo_apellido');
            $table->string('email');
            $table->double('salario_diario', 8, 2);
            $table->foreignId('id_estatus');
            $table->foreignId('id_puesto');
            $table->timestamps();
        });
        Schema::table('empleados', function (Blueprint $table) {
            $table->foreign('id_puesto')->references('id')->on('puestos');
        });
        Schema::table('empleados', function (Blueprint $table) {
            $table->foreign('id_estatus')->references('id')->on('estatus');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('empleados');
    }
}
