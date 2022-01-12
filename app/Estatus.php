<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Estatus extends Model
{
    //
    protected $table = 'estatus';
    protected $fillable = [
        'descripcion',
      ];

      public function Empleados(){
        return $this->hasMany('App\Empleado', 'id_estatus', 'id');
      }
}
