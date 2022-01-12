<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Empleado;
use App\Puesto;
use App\Estatus;
use View;
use Validator;
use PDF;

class EmpleadosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $empleados = Empleado::all();
        return View::make('empleados.index')->with('empleados', $empleados);
    }

    public function pdf(){
      $estatus = Estatus::all();
      $pdf = PDF::loadView('empleados.pdf',array('estatus' =>$estatus));
      return $pdf->download('estatus'.mt_rand().'.pdf');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $puestos = Puesto::all();
        $estatus = Estatus::all();
        return View::make('empleados.create')->with('puestos', $puestos)->with('estatus', $estatus);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $validator = $this->validacion($request);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
          $empleado = new Empleado();
          $empleado->nombre = $request->get('nombre');
          $empleado->primer_apellido = $request->get('primer_apellido');
          $empleado->segundo_apellido = $request->get('segundo_apellido');
          $empleado->email = $request->get('email');
          $empleado->salario_diario = $request->get('salario_diario');
          $empleado->id_estatus = $request->get('id_estatus');
          $empleado->id_puesto = $request->get('id_puesto');
          $empleado->save();
            return redirect()->route('empleados.index')->with('success', 'Empleado registrado correctamente');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
            $puestos = Puesto::all();
            $estatus = Estatus::all();
            $empleado = Empleado::find($id);
            return View::make('empleados.show')->with('puestos', $puestos)->with('estatus', $estatus)->with('empleado', $empleado);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $puestos = Puesto::all();
        $estatus = Estatus::all();
        $empleado = Empleado::find($id);
        return View::make('empleados.edit')->with('puestos', $puestos)->with('estatus', $estatus)->with('empleado', $empleado);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $validator = $this->validacion($request);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
          $empleado = Empleado::find($id);
          $empleado->nombre = $request->get('nombre');
          $empleado->primer_apellido = $request->get('primer_apellido');
          $empleado->segundo_apellido = $request->get('segundo_apellido');
          $empleado->email = $request->get('email');
          $empleado->salario_diario = $request->get('salario_diario');
          $empleado->id_estatus = $request->get('id_estatus');
          $empleado->id_puesto = $request->get('id_puesto');
          $empleado->save();
          return redirect()->route('empleados.index')->with('success', 'Empleado editado correctamente');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        //
        $this->destroy($id);
        return redirect()->route('empleados.index')->with('success', 'Empleado eliminado correctamente');

    }
    public function destroy($id)
    {
        //
        $empleado = Empleado::find($id);
        $empleado->delete();
    }


    public function validacion($request){
      $messages = [
         'id_puesto.required' => 'Selecciona el puesto.',
         'id_estatus.required' => 'Selecciona el estatus.',
         'nombre.required' => 'El campo nombre es obligatorio.',
         'primer_apellido.required' => 'El campo primer apellido es obligatorio.',
         'segundo_apellido.required' => 'El campo segundo apellido es obligatorio.',
         'email.required' => 'El campo correo es obligatorio.',
         'salario_diario.required' => 'El campo salario diario es obligatorio.',
         'salario_diario.numeric' => 'El campo salario diario debe ser númerico.',
         'nombre.max' => 'El campo nombre no puede tener más de 190 caracteres.',
         'primer_apellido.max' => 'El campo primer apellido no puede tener más de 190 caracteres.',
         'segundo_apellido.max' => 'El campo segundo apellido no puede tener más de 190 caracteres.',
         'email.max' => 'El campo correo no puede tener más de 190 caracteres.',
         'email.email' => 'El campo correo debe ser un correo electrónico válido.',
       ];

      $validator = Validator::make($request->all(), [
        'id_puesto'     =>  'required',
        'id_estatus'     =>  'required',
        'nombre'     =>  'required|max:190',
        'primer_apellido'     =>  'required|max:190',
        'segundo_apellido'     =>  'required|max:190',
        'email'     =>  'required|max:190|email',
        'salario_diario'     =>  'required|numeric',
      ], $messages);

      return $validator;
    }
}
