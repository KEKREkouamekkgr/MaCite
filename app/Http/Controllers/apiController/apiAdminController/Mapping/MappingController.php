<?php

namespace App\Http\Controllers\apiController\apiAdminController\Mapping;

use Carbon\Carbon;
use App\Models\Mapping;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class MappingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $mappings = Mapping::orderBy('created_at', 'desc')->with(['commune:id,nom','categorie:id,titre','user:id,name,prenom'])->get();
        return response()->json($mappings, 200);
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
            'nomProprietaire'=>'required',
            'numTel'=>'required',
            'nomEntreprise'=>'required',
            'descripActivite'=>'required|String',
            'latitude' =>'required',
            'longitude'=>'required',
            'IdCategorie'=>'required',
            'IdCommune'=>'required',
            'IdUser'=>'required'

        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ],400);
        }

        $mapping = New Mapping();
        $mapping->nomProprietaire = $request->input('nomProprietaire');
        $mapping->numTel = $request->input('numTel');
        $mapping->nomEntreprise= $request->input('nomEntreprise');
        $mapping->descripActivite = $request->input('descripActivite');
        $mapping->jsonDonnee = $request->input('jsonDonnee');
        $mapping->latitude = $request->input('latitude');
        $mapping->longitude = $request->input('longitude');
        $mapping->IdCategorie = $request->input('IdCategorie');
        $mapping->IdCommune = $request->input('IdCommune');
        $mapping->IdUser = $request->input('IdUser');
        $mapping->created_at = Carbon::Now();
        $mapping->updated_at = Carbon::Now();
        $mapping->save();
        $parkings = Mapping::orderBy('created_at','desc')->with(['commune:id,nom','categorie:id,titre','user:id,name,prenom'])->first();
        return response()->json([
            "status"=>true,
            "donnees"=>$parkings,
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
        $mapping = Mapping::findOrFail($id);

        return response()->json([
            "status"=>true,
            "donnee"=> $mapping,
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
        $mapping = Mapping::findOrFail($id);
        $mapping->nomProprietaire = $request->input('nomProprietaire');
        $mapping->numTel = $request->input('numTel');
        $mapping->nomEntreprise= $request->input('nomEntreprise');
        $mapping->descripActivite = $request->input('descripActivite');
        $mapping->jsonDonnee = $request->input('jsonDonnee');
        $mapping->latitude = $request->input('latitude');
        $mapping->longitude = $request->input('longitude');
        $mapping->residant = $request->input('residant');
        $mapping->IdCategorie = $request->input('IdCategorie');
        $mapping->IdCommune = $request->input('IdCommune');
        $mapping->IdUser = $request->input('IdUser');
        $mapping->updated_at = Carbon::Now();
        return response()->json([
            "status"=>true,
            "donnee"=>$mapping
        ],203);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $idee = Mapping::findOrfail($id);
        $idee->delete();
        return response()->json('Supression effectué avec succès',204);
    }
}
