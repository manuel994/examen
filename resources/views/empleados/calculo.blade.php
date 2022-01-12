@extends('layouts.app')
@section('content')
<div class="container-fluid">

  <calculo-salario id_empleado="{{ $empleado->id }}"></calculo-salario>
  <div class="row">
      <div class="col-sm-3 offset-sm-6">
          <a href="{{url()->previous()}}" id="Regresar" class="btn btn-danger">Regresar</a>
      </div>
  </div>
</div>
@endsection
