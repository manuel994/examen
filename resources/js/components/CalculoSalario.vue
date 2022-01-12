<template>
    <div class="container-fluid">
        <br>
        <div class="col-sm-10 offset-sm-2">
            <div class="card col-sm-8 offset-sm-2">
                <div class="card-header text-white bg-primary">Calcular salario</div>
                <div class="card-body">
                    <div class="row">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Correo</th>
                                    <th scope="col">Puesto</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>{{empleado.nombre}} {{empleado.primer_apellido}} {{empleado.segundo_apellido}}</td>
                                    <td>{{empleado.email}}</td>
                                    <td>{{puesto}} </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <button class="btn btn-primary col-sm-3 offset-sm-1" v-on:click="semanal">Semanal</button>
                        <button class="btn btn-primary col-sm-3 offset-sm-1" v-on:click="quincenal">Quincenal</button>
                        <button class="btn btn-primary col-sm-3 offset-sm-1" v-on:click="mensual">Mensual</button>
                    </div>
                    <div class="row">
                        <p class="card-text text-center">El salario es de: {{salario}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['id_empleado'],
        data() {
            return {
                empleado: {
                    nombre: '',
                    primer_apellido: '',
                    segundo_apellido: '',
                    email: '',
                    puesto: '',
                    salario_diario: '',
                    salario: 0,
                },
                salario: 0,
                puesto: '',
                formato: new Intl.NumberFormat('es-MX', {
                    style: 'currency',
                    currency: 'MXN'
                })
            }
        },
        created() {
            axios.get('/calculo/' + this.id_empleado + '/salario').then(res => {
                this.empleado = res.data;
            })
        },
        mounted() {
            axios.get('/calculo/' + this.id_empleado + '/puesto').then(res => {
                this.puesto = res.data;
            })
        },
        methods: {
            semanal: function(event) {
                this.salario = this.empleado.salario_diario * 7;
                this.salario = this.formato.format(this.salario);
            },
            quincenal: function(event) {
                this.salario = this.empleado.salario_diario * 15;
                this.salario = this.formato.format(this.salario);
            },
            mensual: function(event) {
                this.salario = this.empleado.salario_diario * 30;
                this.salario = this.formato.format(this.salario);
            }
        }
    }
</script>
