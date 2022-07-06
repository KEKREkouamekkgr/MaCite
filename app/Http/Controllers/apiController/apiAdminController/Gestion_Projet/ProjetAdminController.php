<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Projet;

use App\Models\Projet;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\ProjetResource;
use Illuminate\Support\Facades\Validator;

class ProjetAdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        //
        $projets =Projet::where('IdCommune',$id)->orderBy('created_at', 'desc')->with(['commune:id,nom','user:id,name,prenom'])->get();
        return response()->json($projets,200);

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
            'titre'=>'required',
            'description' =>'required',
            'IdCommune'=>'required',
            'IdUser'=>'required',
        ]);

        //conditions de stokage
        if($validator->fails()){
            return response()->json([
                'status' => 'false',
                'message' => $validator->errors(),
            ],400);
        }
        $projet = new Projet();
        $projet->titre = $request->input('titre');
        $projet->description = $request->input('description');
        $projet->IdCommune = $request->input('IdCommune');
        $projet->IdUser = $request->input('IdUser');
        $projet->save();
        $projets =Projet::orderBy('created_at', 'desc')->with(['commune:id,nom','user:id,name,prenom'])->first();
        return response()->json(["status"=>true,"message" =>"Projet crée avec succès.","data"=>$projets],201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Projet  $projet
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $projet= Projet::findOrFail($id);
        if(is_null($projet)) {
            return response()->json(["message"=>'Projet non trouvé!', "status"=>404]);
        }
        return response()->json($projet,200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Projet  $projet
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $input = $request->all();
        $validator = Validator::make($input,[
            'titre' =>'required',
            'description'=>'required',
            'Idcommune'=>'required',
            'IdUser'=>'required'
        ]);

        //conditions de stokage
        if($validator->fails()){
            return response()->json('Erreur de Validation', $validator->errors());
        }

        $projet = Projet::findOrFail($id);

        $projet->titre = $request->input('titre');
        $projet->description = $request->input('description');
        $projet->IdCommune = $request->input('IdCommune');
        $projet->IdUser = $request->input('IdUser');
        $projet->update();

        return response()->json(['status'=>"true",'message' =>"Projet modifié avec succès!"],203);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Projet  $projet
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
         $projet=Projet::findOrFail($id);
         $projet->delete();
        return response()->json(["status"=>"true","message"=>"Projet supprimé avec succès"],204);

    }
}
