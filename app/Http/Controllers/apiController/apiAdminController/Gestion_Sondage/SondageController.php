<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage;

use App\Models\Sondage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class SondageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Liste de tous les sondages

        $sondage = Sondage::with(['user:id,name'])->with(['option'])->orderByDesc('id')->get();

        return response()->json($sondage,200);

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
                'description'=>'required|max:255',
                'IdUser'=>'required',
                'IdCommune'=>'required'

            ]);

            if($validator->fails()){
                return response()->json([
                    'status' => 'false',
                    'message' => $validator->errors(),

                ],400);
            }

            Sondage::create([
                'description'=>$request->description,
                'IdUser'=>$request->IdUser,
                'options'=>$request->options,
                'IdCommune'=>$request->IdCommune
            ]);

            return response()->json([
                'message'=> 'Insertion réussie',
                'status'=> True
            ],201);
        }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Sondage  $sondage
     * @return \Illuminate\Http\Response
     */
    public function show(Sondage $sondage,$id)
    {

            //Voir un sondage
            $sondage = Sondage::findOrFail($id);
            return response()->json($sondage, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Sondage  $sondage
     * @return \Illuminate\Http\Response
     */

    public function update(Request $request, $id)
    {
        //Mise a jour d'un sondage
        $sondage=Sondage::find($id);
        $sondage->update($request->all());
        return response([
            'status'=>'true',
            'message'=>'Mise a jour OK!',
        ]);
}

    /**
     * Remove the specified resource from storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Sondage  $sondage
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        //Suppression du sondage

        $sondage = Sondage::findOrFail($id);
        $sondage->delete();
        return response()->json(
            [
                'status'=>'True',
                'message'=>'Suppression effectuée avec succes'

            ],200
        );
    }

    public function idSonge($user)
    {
        $idSondage = DB::table('sondages')
        ->join('users','users.id','sondages.IdUser')
        ->where('users.id',$user)
        ->select('sondages.id','sondages.description')
        ->orderByDesc('sondages.id')
        ->get();

        $Idsondage =$idSondage->first();

        return response()->json($Idsondage, 200);
    }
}
