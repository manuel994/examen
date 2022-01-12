<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Puesto extends Model
{
    //
    protected $table = 'puestos';
    protected $fillable = [
        'descripcion',
      ];

      public function Empleados(){
        return $this->hasMany('App\Empleado', 'id_puesto', 'id');
      }
}
