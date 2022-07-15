<?php

namespace App\Http\Controllers\apiController\apiAdminController\Mapping;

use Carbon\Carbon;
use App\Models\Mapping;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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
            // 'image'=>'required',
            'nomProprietaire'=>'required',
            'prenomProprietaire'=>'required',
            'numTel'=>'required',
            'nomEntreprise'=>'required',
            'descripActivite'=>'required|String',
            'latitude' =>'required',
            'longitude'=>'required',
            'IdResidant'=>'required',
            'IdCategorie'=>'required',
            'IdCommune'=>'required',
            'IdUser'=>'required',

        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ],400);
        }

        $mapping = New Mapping();
        $mapping->nomProprietaire = $request->input('nomProprietaire');
        $mapping->prenomProprietaire = $request->input('prenomProprietaire');
        $mapping->numTel = $request->input('numTel');
         //insertion de l'images dans la base de la base de données
         $photo = $request->file('image');

         if($request->hasfile('image'))
         {

              $extension = $photo->getClientOriginalName();

        //    $fileName = 'http://192.168.252.201:8000/uploads/ImageMapping/'.time().'_'.$extension;
           $fileName = 'uploads/ImageMapping/'.time().'_'.$extension;
              $photo->move(public_path('uploads/ImageMapping/'),$fileName);
              $mapping->image = $fileName;

         }
        $mapping->nomEntreprise = $request->input('nomEntreprise');
        $mapping->descripActivite = $request->input('descripActivite');
        $mapping->jsonDonnee = $request->input('jsonDonnee');
        $mapping->latitude = $request->input('latitude');
        $mapping->longitude = $request->input('longitude');
        $mapping->IdCategorie = $request->input('IdCategorie');
        $mapping->IdCommune = $request->input('IdCommune');
        $mapping->IdResidant = $request->input('IdResidant');
        $mapping->IdUser = $request->input('IdUser');
        $mapping->created_at = Carbon::Now();
        $mapping->updated_at = Carbon::Now();
        $mapping->save();
        $mappigns = Mapping::orderBy('created_at','desc')->with(['commune:id,nom','categorie:id,titre','user:id,name,prenom'])->first();
        return response()->json([
            "status"=>true
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
        $mapping->prenomProprietaire = $request->input('prenomPropietaire');
        $mapping->numTel = $request->input('numTel');
         //insertion de l'images dans la base de la base de données
         if($request->hasfile('image'))
         {
              $photo = $request->file('image');
              $extension = $photo->getClientOriginalName();
              $fileName = time().'_'.$extension;
              $photo->move(public_path('uploads/ImageMapping/'),$fileName);
              $mapping->image = $fileName;
         }
        $mapping->nomEntreprise= $request->input('nomEntreprise');
        $mapping->descripActivite = $request->input('descripActivite');
        $mapping->jsonDonnee = $request->input('jsonDonnee');
        $mapping->latitude = $request->input('latitude');
        $mapping->longitude = $request->input('longitude');
        $mapping->IdCategorie = $request->input('IdCategorie');
        $mapping->IdCommune = $request->input('IdCommune');
        $mapping->IdResidant = $request->input('IdResidant');
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

    public function parkingRecherche($commune,$categorie)
    {

        if(!is_null($commune) && !is_null($categorie)){
            $reservationUser = DB::table('mappings')
            ->join('categories', 'mappings.IdCategorie', '=', 'categories.id')
            ->join('communes', 'mappings.IdCommune', '=', 'communes.id')
            ->where('IdCommune',$commune)
            ->where('IdCategorie',$categorie)
            ->select('mappings.*','categories.*')
            ->get();
            $array = $reservationUser->toArray();
            return response()->json($array ,200);
        }else{
            return response()->json('Non Trouvé',200);
        }
    }

    public function categorieRecherche($categorie)
    {

        if(!is_null($categorie)){
            $reservationUser = DB::table('mappings')
            ->join('categories', 'mappings.IdCategorie', '=', 'categories.id')
            ->join('communes', 'mappings.IdCommune', '=', 'communes.id')
            ->where('IdCategorie',$categorie)
            ->select('mappings.*','categories.*',('mappings.jsonDonnee'))
            ->get();

            return response()->json($reservationUser,200);
        }else{
            return response()->json('Non Trouvé',200);
        }
    }



}
