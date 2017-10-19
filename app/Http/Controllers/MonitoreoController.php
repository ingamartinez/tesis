<?php

namespace App\Http\Controllers;

use App\Arduino;
use App\Events\AlertaArduinoEvent;
use App\Mail\OrderShipped;
use App\Zona;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MonitoreoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $zonas = Zona::with('arduinos')->get();

        return view('usuario.monitoreo.index',compact('zonas'));
    }

    public function store(Request $request)
    {
//        $zona = Arduino::withTrashed()->findOrFail($request->arduino_id)->zona;

        $arduino = Arduino::withTrashed()->with('zona')->findOrFail(2);

        $now = new Carbon('5:12:15');

        $now->toTimeString();

        if(($now->toTimeString() > $arduino->zona->hora_fin) || ($now->toTimeString() < $arduino->zona->hora_inicio)){
            if ($request->luz >=20 || $request->sonido >= 40 || $request->temperatura <=25 || $request->movimiento == "SI"){
                Mail::to('ing.amartinez94@gmail.com')->send(new OrderShipped($arduino,$request));
                event(new AlertaArduinoEvent($arduino->zona->nombre,'Alerta'));
            }
        }
    }
}
