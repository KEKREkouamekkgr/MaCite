<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Projet;

use App\Models\Probleme;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Http\Resources\ProblemeResource;
use App\Models\User;
use Illuminate\Support\Facades\Validator;

class ProblemeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Probleme::with(['user:id,name'])->with('typeProbleme')->get();
        return response()->json($data,200);
    }

    public function indexHistorique($user)
    {
        $data = Probleme::with(['user:id,name'])->with('typeProbleme')->where('id',$user)->get();
        return response()->json($data,200);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $user, $idtypeprobleme)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'image' => 'required',
            'commentaire' =>'required',
            'localisation' =>'required',
            'IdUser' =>'required',
            'IdTypeProbleme' =>'required',
            'IdCommune' =>'required',
        ]);

        if($validator->fails()){
            return response()->json([
                'status' => 'false',
                'message' => $validator->errors(),

            ],400);
        }


        $probleme = New Probleme();
        //Insertion d'une Image dans La BD
        if($request->hasfile('image'))
        {
             $photo = $request->file('image');
             $extension = $photo->getClientOriginalName();
             $fileName = time().'_'.$extension;
            $photo->move(public_path('uploads/ImageProbleme/'),$fileName);
            $probleme->image = $fileName;
        }
        $probleme->commentaire = $request->input('commentaire');
        $probleme->localisation = $request->input('localisation');
        $probleme->IdUser = $user;
        $userId = User::findOrFail($user);
        $userIdCommune = $userId->IdCommune;
        $probleme->IdCommune = $userIdCommune;
        $probleme->IdTypeProbleme= $idtypeprobleme;
        $probleme->save();

        return response()->json(["status"=>true,"message" =>"Probleme crée avec succès."],201);

     }



    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $probleme = DB::table('problemes')->where('id',$id)->first();
        $prob = $probleme->id;

        $problemeAll = DB::table('problemes')
        ->join('type_problemes','problemes.IdTypeProbleme','=','type_problemes.id')
        ->join('users','problemes.IdUser','=','users.id')
        ->where('problemes.id',$prob)
        ->select('problemes.id','problemes.image','problemes.commentaire','problemes.localisation','users.name','users.prenom','type_problemes.titre')
        ->first();

        return response()->json($problemeAll,200);
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
