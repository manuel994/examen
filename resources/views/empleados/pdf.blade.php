@foreach($estatus as $estado)
<h3>Estaus: {{$estado->descripcion}}</h3>
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nombre</th>
      <th scope="col">Primer apellido</th>
      <th scope="col">Segundo apellido</th>
      <th scope="col">Email</th>
      <th scope="col">Puesto</th>
      <th scope="col">Salario diario</th>
    </tr>
  </thead>
  <tbody>
    @foreach($estado->Empleados as $empleado)
    <tr>
      <th scope="row">{{$empleado->id}}</th>
      <td>{{$empleado->nombre}}</td>
      <td>{{$empleado->primer_apellido}}</td>
      <td>{{$empleado->segundo_apellido}}</td>
      <td>{{$empleado->email}}</td>
      <td>{{$empleado->puesto->descripcion}}</td>
      <td>${{number_format($empleado->salario_diario,2,".", ",")}}</td>
    </tr>
    @endforeach
  </tbody>
</table>
@endforeach
