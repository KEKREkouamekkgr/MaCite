<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Mld;

use App\Models\Commenter;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class CommenterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {


            $commentaire = Commenter::orderByDesc('created_at')->with(['proposIdee:id,description','user:id,name,prenom'])->get();
            return response()->json($commentaire, 200);
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
            'description' =>'required|string|max:255',
            'IdUser' => 'required|integer',
            'IdProposIdee' => 'required|integer',

        ]);

        if($validator->fails()){
            return response()->json([
                'status' => 'false',
                'message' => $validator->errors(),

            ],400);
        }

            $commenter = New Commenter();
            $commenter->IdUser = $request->input('IdUser');
            $commenter->IdProposIdee = $request->input('IdProposIdee');
            $commenter-> description = $request->input('description');
            $commenter->save();
            $commentaire = Commenter::orderByDesc('created_at')->with(['user:id,name,prenom','proposIdee:id,description'])->first();
            return response()->json(['status'=>true,'donnees'=> $commentaire], 201);
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

            $commenter =Commenter::findOrFail($id);
            $commenter->IdUser = $user;
            $commenter->IdProposIdee = $proposIdee;
            $commenter-> description = $request->input('description');

            $commenter->update();

            return response()->json(['status'=>true,'message' => 'Modifier avec Succès!.'],201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $commenter = Commenter::findOrFail($id);
        $commenter->delete();
        return response()->json(
            [
                'status'=>'True',
                'message'=>'Suppression effectuée avec succes'

            ],200
        );
    }
}
