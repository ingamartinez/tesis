<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Validator;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function validar(Request $request){
        $request->validate([
            'name' => 'bail|required|max:191',
            'email' => 'bail|required|email|unique:users,email,'.$request->id.'|max:191',
            'password' => 'bail|required|max:191',
            'radio_rol' => 'bail|required',
        ]);
    }
    public function index()
    {
        $users = User::all();
        return view('admin.gestion_usuarios.index', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:191',
            'email' => 'required|email|unique:users,email,'.$request->id.'|max:191',
            'password' => 'required|max:191',
            'radio_rol' => 'required',
        ]);

//        dd($request->all());

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = $request->password;

        $user->save();

        $user->attachRole(\HttpOz\Roles\Models\Role::findBySlug($request->radio_rol));

        return redirect()->back();

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try{
            $user = User::with('roles')->findOrFail($id);

//            $rolID=[];
//            foreach ($user->roles as $rol){
//                $rolID=$rol->id;
//            }
//            $user->rol_id = $rolID;

//            dd($user);

            return response()->json($user,200);

        }catch (\Exception $ex){
            return response()->json(['message'=>'No se encuentra el usuario'],404);
//            return response()->json(['message'=>$ex],404);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
