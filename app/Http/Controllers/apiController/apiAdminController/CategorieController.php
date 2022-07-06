<?php

namespace App\Http\Controllers\apiController\apiAdminController;

use Carbon\Carbon;
use App\Models\Categorie;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class CategorieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Categorie::orderBy('created_at', 'desc')->get();
        return response()->json($categories, 200);
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
            'titre'=>'required',
            'description'=>'required'
        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ],400);
        }

        $categorie = New Categorie();
        $categorie->titre = $request->input('titre');
        $categorie->description = $request->input('description');
        $categorie->created_at = Carbon::Now();
        $categorie->updated_at = Carbon::Now();
        $categorie->save();
        $categories = Categorie::orderBy('created_at','desc')->first();
        return response()->json([
            "status"=>true,
            "donnees"=>$categories,
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
        $categorie = Categorie::findOrFail($id);
        return response()->json([
            "status"=>true,
            "donnee"=> $categorie,
        ],200);
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
            'titre'=>'required',
            'description'=>'required'
        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ],400);
        }

        $categorie = Categorie::findOrFail($id);
        $categorie->titre = $request->input('titre');
        $categorie->description = $request->input('description');
        $categorie->updated_at = Carbon::Now();
        $categorie->save();
        $categories = Categorie::orderBy('created_at','desc')->first();
        return response()->json([
            "status"=>true,
            "donnees"=>$categories,
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
        $categorie = Categorie::findOrFail($id);
        $categorie->delete();
        return response()->json('Supression de la categorie effectué avec succès',204);
    }
}
