<?php

namespace App\Http\Controllers;

use App\Zona;
use Illuminate\Http\Request;

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
}
