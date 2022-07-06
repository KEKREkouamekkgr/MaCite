<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Collecte;

use App\Models\Collecte;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class CollecteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Collecte::latest()->get();

        return response()->json($data,200);
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
        $input = $request->all();

        $validator = Validator::make($input, [
            'montant' =>'required',
            'reseau' =>'required',
            'IdProjet' =>'required',
            'status' =>'required'

        ]);

        //conditions de stokage
        if($validator->fails()){
            return response()->json('Validation Erreur.', $validator->errors());
        }

         Collecte::create([
            'montant'=>$request->montant,
            'reseau'=>$request->reseau,
            'IdProjet'=>$request->IdProjet,
            'status'=>$request->status,
            'dateFin'=>$request->dateFinCollecte

        ]);
        return response()->json(["status"=>"true","message" =>"Projet crée avec succès."],201);


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
