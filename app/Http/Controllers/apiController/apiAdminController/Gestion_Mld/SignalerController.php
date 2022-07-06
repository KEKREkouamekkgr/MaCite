<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Mld;

use App\Models\Signaler;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class SignalerController extends Controller
{


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,$user, $proposIdee)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'IdUser' => 'required|integer',
            'IdProposIdee' => 'required|integer',
        ]);

        if($validator->fails()){
            return response()->json([
                'status' => 'false',
                'message' => $validator->errors(),

            ],400);
        }

            $signaler = New Signaler();
            $signaler->IdUser = $user;
            $signaler->IdProposIdee = $proposIdee;
            $signaler->save();

            return response()->json(['status'=>'true','message' => 'Enregistrer avec Succès!.'], 201);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id, $user, $proposIdee)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'Description' =>'required|string|max:255',
            'IdUser' => 'required|integer',
            'IdProposIdee' => 'required|integer',

        ]);

        if($validator->fails()){
            return response()->json([
                'status' => 'false',
                'message' => $validator->errors(),
            ],400);
        }

            $signaler = Signaler::findOrFail($id);
            $signaler->IdUser = $user ?? $signaler->IdUser;
            $signaler->IdProposIdee = $proposIdee ?? $signaler->IdProposIdee;
            $signaler->update();

            return response()->json(['status'=>'true','message' => 'Modifier avec Succès!.'],201);
    }

}
