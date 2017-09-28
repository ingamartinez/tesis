@extends('layouts.dashboard')

@section('titulo', 'Gestión de usuarios')

@section('content')
    <div class="row">
        <div class="col-lg-3 col-md-6">
            <div class="card-box">
                <div class="dropdown pull-right">
                    <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                        <i class="zmdi zmdi-more-vert"></i>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Reportar</a></li>
                    </ul>
                </div>

                <h4 class="header-title m-t-0 m-b-30">Arduino ID: 1</h4>

                <div class="widget-chart-1">
                    <div class="widget-chart-box-1">
                        <input data-plugin="knob" data-width="80" data-height="80" data-fgColor="#f05050 "
                               data-bgColor="#F9B9B9" value="58"
                               data-skin="tron" data-angleOffset="180" data-readOnly=true
                               data-thickness=".2"/>
                    </div>

                    <div class="widget-detail-1">
                        <h2 class="p-t-10 m-b-0"> Luz </h2>
                    </div>
                </div>
                <br>
                <div class="widget-chart-1">
                    <div class="widget-chart-box-1">
                        <input data-plugin="knob" data-width="80" data-height="80" data-fgColor="#ffbd4a"
                               data-bgColor="#FFE6BA" value="80"
                               data-skin="tron" data-angleOffset="180" data-readOnly=true
                               data-thickness=".2"/>
                    </div>
                    <div class="widget-detail-1">
                        <h2 class="p-t-10 m-b-0"> Temperatura </h2>
                    </div>
                </div>
                <br>
                <div class="widget-chart-1">
                    <div class="widget-chart-box-1">
                        <input data-plugin="knob" data-width="80" data-height="80" data-fgColor="#10c469"
                               data-bgColor="rgba(16, 196, 105, 0.2)" value="46"
                               data-skin="tron" data-angleOffset="180" data-readOnly=true
                               data-thickness=".2"/>
                    </div>
                    <div class="widget-detail-1">
                        <h2 class="p-t-10 m-b-0"> Sonido </h2>
                    </div>
                </div>
                <br>
                <div class="widget-chart-1">
                    <div class="widget-chart-box-1">
                        {{--zmdi zmdi-run | zmdi zmdi-male-halt--}}
                        <i class="zmdi zmdi-run" style="display: inline-block;
                                                        font-size: 75px;">

                        </i>
                        <i class="zmdi zmdi-run" style="display: inline-block;
                                                        font-size: 75px;">

                        </i>
                        <i class="zmdi zmdi-run" style="display: inline-block;
                                                        font-size: 75px;">

                        </i>
                    </div>
                    <div class="widget-detail-1">
                        <h2 class="p-t-10 m-b-0"> Movimiento </h2>
                    </div>
                </div>
            </div>
        </div><!-- end col -->
    </div>
@endsection

@push('script')

@endpush