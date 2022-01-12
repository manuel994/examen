@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Empleados
                    <a href="{{route('empleados.create')}}" class="text-success">
                      <i class="bi bi-person-plus"></i>
                    </a>
                  </div>

                <div class="card-body">
                    <table class="table" id="empleados_id">
                        <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Primer apellido</th>
                                <th scope="col">Segundo apellido</th>
                                <th scope="col">Correo</th>
                                <th scope="col">Salario</th>
                                <th scope="col">Puesto</th>
                                <th scope="col">Estatus</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($empleados as $empleado)
                            <tr>
                                <th scope="row">{{$empleado->id}}</th>
                                <td>{{$empleado->nombre}}</td>
                                <td>{{$empleado->primer_apellido}}</td>
                                <td>{{$empleado->segundo_apellido}}</td>
                                <td>{{$empleado->email}}</td>
                                <td>${{number_format($empleado->salario_diario,2,".", ",")}}</td>
                                <td>{{$empleado->Puesto->descripcion}}</td>
                                <td>{{$empleado->Estatus->descripcion}}</td>
                                <td>
                                  <a href="{{route('empleados.edit',$empleado->id)}}" class="text-success">
                                  <i class="bi bi-pencil"></i>
                                </a>
                                <a href="{{route('empleados.show',$empleado->id)}}" class="text-success">
                                  <i class="bi bi-eye"></i>
                                </a>
                                <a href="{{route('empleados.delete',$empleado->id)}}" class="text-success">
                                  <i class="bi bi-trash"></i>
                                </a>
                                <a href="{{route('calculo.show',$empleado->id)}}" class="text-success">
                                  <i class="bi bi-calculator"></i>
                                </a>
                              </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
