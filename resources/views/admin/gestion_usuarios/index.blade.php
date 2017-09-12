@extends('layouts.dashboard')

@section('titulo', 'Gestión de usuarios')

@section('content')
    <div class="row">
        <div class="col-sm-12">
            <div class="card-box table-responsive">
                <div class="dropdown pull-right">
                    <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                        <i class="zmdi zmdi-more-vert"></i>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </div>

                <button class="btn btn-primary waves-effect waves-light btn-lg m-b-5" data-toggle="modal" data-target="#modal_agregar_usuario">Agregar Usuario</button>

                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <table id="datatable" class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Roles</th>
                        <th>Fecha Creado</th>
                        <th>Fecha de Ultima Mod</th>
                        <th>Opciones</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach($users as $user)
                        <tr data-id="{{$user->id}}">
                            <td>{{$user->name}}</td>
                            <td>{{$user->email}}</td>
                            <td>
                                @foreach($user->roles as $rol)
                                {{$rol->name}}
                                @endforeach
                            </td>
                            <td>{{$user->updated_at}}</td>
                            <td>{{$user->created_at}}</td>

                            <td>
                                <a href="#" class="editar"><i class="fa fa-pencil fa-lg" style="color: #10c469"></i></a>
                                <a href="#" class="eliminar"><i class="fa fa-trash-o fa-lg" style="color: #ff5b5b"></i></a>
                            </td>
                        </tr>
                    @endforeach

                    </tbody>
                </table>
            </div>
        </div><!-- end col -->
    </div>
@endsection

@section('modals')
    @include('admin.gestion_usuarios.includes.modal_agregar_usuario')
    @include('admin.gestion_usuarios.includes.modal_editar_usuario')
@endsection

@push('script')
<script>
    $(document).ready(function() {
        $('#datatable').DataTable({
            "language": {
                "url": "{{asset('assets/js/Spanish.json')}}"
            }
        });
    });

    $('.editar').on('click', function (e) {
        e.preventDefault();
        var fila = $(this).parents('tr');
        var id = fila.data('id');
        $.ajax({
            type: 'GET',
            url: '{{url('gestion-usuarios')}}/' + id,
            success: function (data) {

                console.log(data);

                $('#modal_editar_usuario_id').val(data.id);
                $('#modal_editar_usuario_name').val(data.name);
                $('#modal_editar_usuario_email').val(data.email);
                {{--$('#modal_editar_usuario_email').attr('data-remote','{{url('usuario/')}}'+id);--}}



                $('input:radio[name=radio_rol][value='+_.first(data.roles).slug+']').attr('checked', 'checked');

                $("#modal_editar_usuario").modal('toggle');
            }
        });
    });


    $('#form_editar_usuario').on('submit', function (e) {
        e.preventDefault();
        var id=$("#modal-editar-iglesia-id").val();

        $.ajax({
            type: 'PUT',
            url: 'actualizarIglesia/'+id,
            data: $('#edicionIglesia').serialize(),
            success: function(){
                console.log(id);
                location.reload();
            }
        });
    });

</script>
@endpush