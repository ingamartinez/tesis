@extends('layouts.dashboard')

@section('titulo', 'Gestión de usuarios')

@section('content')
    <div class="row">
        @foreach($arduinos as $arduino)
            <div class="col-lg-4 col-md-6">
                <div class="card-box" id="arduino-id-{{$arduino->id}}">
                    <div class="dropdown pull-right">
                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                            <i class="zmdi zmdi-more-vert"></i>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="{{url('reporte-arduino').'/'.$arduino->id}}">Reportar</a></li>
                        </ul>
                    </div>

                    <h4 class="header-title m-t-0 m-b-30" >Arduino ID: 1</h4>

                    <div class="widget-chart-1">
                        <div class="widget-chart-box-1">
                            <input data-plugin="knob" data-width="100" data-height="100" data-fgColor="#f05050 "
                                   data-bgColor="#F9B9B9" value="0" data-max="500"
                                   data-skin="tron" data-angleOffset="180" data-readOnly=true
                                   data-thickness=".2" id="arduino-luz-{{$arduino->id}}"/>
                        </div>

                        <div class="widget-detail-1">
                            <h2 style="padding-top: 25px" class="m-b-0"> Luz (LUX) </h2>
                        </div>
                    </div>
                    <br>
                    <div class="widget-chart-1">
                        <div class="widget-chart-box-1">
                            <input data-plugin="knob" data-width="100" data-height="100" data-fgColor="#ffbd4a"
                                   data-bgColor="#FFE6BA" value="0"
                                   data-skin="tron" data-angleOffset="180" data-readOnly=true
                                   data-thickness=".2" id="arduino-temp-{{$arduino->id}}"/>
                        </div>
                        <div class="widget-detail-1">
                            <h2 style="padding-top: 25px" class="m-b-0"> Temperatura (°C) </h2>
                        </div>
                    </div>
                    <br>
                    <div class="widget-chart-1">
                        <div class="widget-chart-box-1" id="arduino-sonido-{{$arduino->id}}">
                            {{-- zmdi zmdi-more | zmdi zmdi-audio | zmdi zmdi-block--}}
                            <i class="zmdi zmdi-more" style="display: inline-block;
                                                        font-size: 75px;">

                            </i>
                            <i class="zmdi zmdi-more" style="display: inline-block;
                                                        font-size: 75px;">

                            </i>
                            <i class="zmdi zmdi-more" style="display: inline-block;
                                                        font-size: 75px;">

                            </i>
                        </div>
                        <div class="widget-detail-1">
                            <h2 class="p-t-10 m-b-0"> Sonido </h2>
                        </div>
                    </div>
                    <br>
                    <div class="widget-chart-1">
                        <div class="widget-chart-box-1" id="arduino-movimiento-{{$arduino->id}}">
                            {{-- zmdi-more | zmdi zmdi-run | zmdi zmdi-male-alt--}}
                            <i class="zmdi zmdi-more" style="display: inline-block;
                                                        font-size: 75px;">

                            </i>
                            <i class="zmdi zmdi-more" style="display: inline-block;
                                                        font-size: 75px;">

                            </i>
                            <i class="zmdi zmdi-more" style="display: inline-block;
                                                        font-size: 75px;">

                            </i>
                        </div>
                        <div class="widget-detail-1">
                            <h2 class="p-t-10 m-b-0"> Movimiento </h2>
                        </div>
                    </div>
                    <br>
                    <p>Ultima actualización <span id="arduino-update-{{$arduino->id}}" style="">.........</span></p>
                </div>
            </div><!-- end col -->
        @endforeach

    </div>
@endsection

@push('script')
    <script>
        $( document ).ready(function() {
            $('.card-box').block({
                message: 'Sincronizando Arduino',
                css: {
                    border: 'none',
                    padding: '15px',
                    backgroundColor: '#000',
                    '-webkit-border-radius': '10px',
                    '-moz-border-radius': '10px',
                    opacity: .5,
                    color: '#fff'
                }
            });
        });
    </script>

@endpush