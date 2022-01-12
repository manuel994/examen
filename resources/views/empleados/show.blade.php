@extends('layouts.app')
@section('content')
<div class="container-fluid">
    <br>
    <div class="col-sm-10 offset-sm-2">
        <div class="card col-sm-8 offset-sm-2">
            <div class="card-header text-white bg-primary">Ver Empleado</div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-11 offset-sm-1">
                        <div class="form-group">
                            <label class="control-label">Nombre:</label>
                            <input type="text" class="form-control" placeholder="Nombre" id="nombre" name="nombre" value="@if( $errors->any() ){{ old('nombre') }}@else {{$empleado->nombre}} @endif">
                            <span class="text-danger show">{{ ucfirst( $errors->first('nombre') ) }}</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-5 offset-sm-1">
                        <div class="form-group">
                            <label class="control-label">Primer apellido:</label>
                            <input type="text" class="form-control" placeholder="Primer apellido" id="primer_apellido" name="primer_apellido" value="@if( $errors->any() ){{ old('primer_apellido') }}@else {{$empleado->primer_apellido}}@endif">
                            <span class="text-danger show">{{ ucfirst( $errors->first('primer_apellido') ) }}</span>
                        </div>
                    </div>
                    <div class="col-sm-5 offset-sm-1">
                        <div class="form-group">
                            <label class="control-label">Segundo apellido:</label>
                            <input type="text" class="form-control" placeholder="Segundo apellido" id="segundo_apellido" name="segundo_apellido" value="@if( $errors->any() ){{ old('segundo_apellido') }}@else {{$empleado->segundo_apellido}}@endif">
                            <span class="text-danger show">{{ ucfirst( $errors->first('segundo_apellido') ) }}</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-5 offset-sm-1">
                        <div class="form-group">
                            <label class="control-label">Correo:</label>
                            <input type="text" class="form-control" placeholder="Correo" id="email" name="email" value="@if( $errors->any() ){{ old('email') }} @else {{$empleado->email}} @endif">
                            <span class="text-danger show">{{ ucfirst( $errors->first('email') ) }}</span>
                        </div>
                    </div>
                    <div class="col-sm-5 offset-sm-1">
                        <div class="form-group">
                            <label class="control-label">Salario diario:</label>
                            <input type="text" step=".01" class="form-control" placeholder="Salario diario" id="salario_diario" name="salario_diario" value="@if( $errors->any() ){{ old('salario_diario') }} @else {{$empleado->salario_diario}}@endif">
                            <span class="text-danger show">{{ ucfirst( $errors->first('salario_diario') ) }}</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-5 offset-sm-1">
                        <div class="form-group">
                            <label class="control-label" for="id_puesto">Puesto</label>
                            <select id="id_puesto" name="id_puesto" class="form-control" value="@if( $errors->any() ){{ old('id_puesto') }}@endif">
                                @foreach($puestos as $puesto)
                                <option value="{{$puesto->id}}" @if( $errors->any() && old('id_puesto')==$puesto->id) selected="selected"
                                @else
                                @if($puesto->id == $empleado->id_puesto) selected="selected"
                                    @endif
                                    @endif>{{$puesto->descripcion}}
                                        </option>
                                        @endforeach
                            </select>
                            <span class="text-danger show">{{ ucfirst( $errors->first('id_puesto') ) }}</span>
                        </div>
                    </div>
                    <div class="col-sm-5 offset-sm-1">
                        <div class="form-group">
                            <label class="control-label" for="id_estatus">Estatus</label>
                            <select id="id_estatus" name="id_estatus" class="form-control" value="@if( $errors->any() ){{ old('id_estatus') }}@endif">
                                @foreach($estatus as $estado)
                                <option value="{{$estado->id}}" @if( $errors->any() && old('id_estatus')==$estado->id) selected="selected"
                                @else
                                @if($estado->id == $empleado->id_estatus) selected="selected"
                                    @endif
                                    @endif>{{$estado->descripcion}}
                                        </option>
                                        @endforeach
                            </select>
                            <span class="text-danger show">{{ ucfirst( $errors->first('id_estatus') ) }}</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 offset-sm-3">
                        <a href="{{url()->previous()}}" id="Regresar" class="btn btn-danger">Regresar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
