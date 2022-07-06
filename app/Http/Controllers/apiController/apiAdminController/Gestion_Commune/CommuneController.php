<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Commune;

use App\Models\Commune;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class CommuneController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
            $commune = Commune::orderByDesc('created_at')->get();
             return response()->json($commune, 200);
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

        $validator = Validator::make($input,[
            'nom' => 'required',
        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ],400);
        }

        $commune = New Commune();
        $commune->nom = $request->input('nom');
        $commune->save();
        return response()->json("Insertion réussie!",201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $commune = Commune::findOrFail($id);

        if(is_null($commune))
        {
            return response()->json(["status"=>"false","message"=>"Idée non trouvée!"],400);
        }
        return response()->json($commune,200);

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

        $validator = Validator::make($input,[
            'nom' => 'required',
        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ],400);
        }

        $commune = Commune::findOrFail($id);
        $commune->nom = $request->input('nom');
        $commune->update();
        return response()->json("Modification Soumis avec succès",201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $commune = Commune::findOrFail($id);
        return response()->json('Supression effectué avec succès',200);

    }
}
