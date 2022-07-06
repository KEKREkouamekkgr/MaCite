<?php

namespace App\Http\Controllers\apiController\apiAdminController\apiGestionDecision;

use App\Models\Preference;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class PreferenceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $preferences = Preference::All();
        return response()->json($preferences ,200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'titre',
            'idUser' =>'required',
            'IdTypeInformation' =>'required',
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => 'false',
                'message' => $validator->errors()
            ],400);
        }

        $preference = New Preference();
        $preference->titre = $request->input('titre');
        $preference->titre = $request->input('idUser');
        $preference->titre = $request->input('IdTypeInformation');
        $preference->save();

     return response()->json(['result' => 'insertion réussir'],201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
        $input = $request->all();
        $validator = Validator::make($input, [
            'titre',
            'idUser' =>'required',
            'IdTypeInformation' =>'required',
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => 'false',
                'message' => $validator->errors()
            ],400);
        }

        $preference = Preference::findOrfail($id);
        $preference->titre = $request->input('titre');
        $preference->titre = $request->input('idUser');
        $preference->titre = $request->input('IdTypeInformation');
        $preference->save();

        return response()->json(['message' => 'Modifications soumis avec succès'],201);
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
