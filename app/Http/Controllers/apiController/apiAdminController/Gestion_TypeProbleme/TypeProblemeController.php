<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_TypeProbleme;

use App\Models\TypeProbleme;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class TypeProblemeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $typeProbleme= TypeProbleme::latest()->get();
        return response()->json($typeProbleme,200);
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
            'titre' => 'required',

        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ], 400);
        }

        $typeProbleme = New TypeProbleme();
        $typeProbleme->titre = $request->input('titre');
        $typeProbleme->save();

        return response()->json([
            "status"=>"True",
            "message"=>"Insertion réussie!"
        ],201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $typeProbleme= TypeProbleme::findOrFail($id);

        if(is_null($typeProbleme))
        {
            return response()->json(["status"=>"false","message"=>"Idée non trouvée!"],400);
        }
        return response()->json($typeProbleme,200);
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
            'titre' => 'required',
        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ], 400);
        }

        $typeProbleme = TypeProbleme::findOrFail($id);
        $typeProbleme->titre = $request->input('titre');
        $typeProbleme->save();

        return response()->json([
            "status"=>"True",
            "message"=>"Modifications réussie!"
        ],201);
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
            $typeProbleme = TypeProbleme::findOrfail($id);
            $typeProbleme->delete();
            return response()->json('Supression effectué avec succès',200);
    }
}
