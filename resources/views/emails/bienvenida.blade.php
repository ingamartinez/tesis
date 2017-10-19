@extends('emails.email')

@section ('content')
    <h1 style="
font-size: 22px;
text-align: center;
color: #fff;
margin-left: 0;
margin-right: 0;
margin-top: 0;
margin-bottom: 40px;
font-weight: bolder;
background-color: #e0121d;
border-radius: 3px;
padding: 20px 0;
">
        Reporte de Anomalía
    </h1>
    <p>
        ¡Hola! <br><br>
        Hemos detectado un funcionamiento anormal en uno de los sensores en la zona <strong>{{$arduino->zona->nombre}}</strong> <br><br>

        <strong>Luz: </strong>{{$request->luz}}
        <strong>Sonido: </strong>{{$request->sonido}}
        <strong>Movimiento: </strong>{{$request->movimiento}}
        <strong>Temperatura: </strong>{{$request->temperatura}}


    </p>

    <p style="
font-size: 16px;
background-color: #e0121d;
padding: 20px;
color: #fff;
margin-bottom: 0;
border-radius: 4px;
text-align: center;
">
        <strong>Gracias por utilizar Sensor App</strong><br><br>

    </p>

@endsection
