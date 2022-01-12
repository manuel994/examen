<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
    //
    protected $table = 'empleados';
    protected $fillable = [
        'nombre',
        'primer_apellido',
        'segundo_apellido',
        'email',
        'salario_diario',
        'id_estatus',
        'id_puesto',
      ];
    public function Puesto()
    {
        return $this->hasOne('App\Puesto', 'id', 'id_puesto');
    }
  public function Estatus()
  {
      return $this->hasOne('App\Estatus', 'id', 'id_estatus');
  }
}
