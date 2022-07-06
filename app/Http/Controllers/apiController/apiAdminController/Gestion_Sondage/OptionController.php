<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage;

use App\Models\Option;
use App\Models\Sondage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
class OptionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Liste de toutes les options
        $option = Option::latest()->get();

        return response()->json($option, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Enregistrement d'une option
            $this->validate($request, [

                'libelle'=>'required|max:255',
                'point'=>'required',
                'IdSondage'=>'required'
            ]);


            Option::create([

                'libelle'=>$request->libelle,
                'point'=>$request->point,
                'IdSondage'=>$request->IdSondage
            ]);

            return response()->json(["status"=>"true","message"=>"Insertion réussie"],201);
        }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Option  $optipn
     * @return \Illuminate\Http\Response
     */
    public function show(Option $option, $id)
    {
        //Voir une Option
        $option = Option::findOrFail($id);
        return response()->json($option, 200);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Option  $option
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //Mise a jour d'un sondage
        $option=Option::find($id);
        $option->update($request->all());
        return response([
            'status'=>'True',
            'message'=>'Mise a jour OK!',

        ],201);
}

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Option  $option
     * @return \Illuminate\Http\Response
     */
    public function destroy(Option $option,$id)
    {
        //Suppression de l'option
        $option= Option::findOrFail($id);
        $option->delete();
        return response()->json(
            [
                'status'=>'True',
                'message'=>'Suppression effectuée avec succes'
            ],200
        );
    }


}
