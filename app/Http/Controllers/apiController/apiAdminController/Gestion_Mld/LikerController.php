<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Mld;

use App\Models\Liker;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class LikerController extends Controller
{

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Liker $like,$id)
    {
        //
        $like =Liker::find($id);
        return response()->json($like);

        //return response()->json($like->load('user','proposIdee'));
    }

    // /**
    //  * Store a newly created resource in storage.
    //  *
    //  * @param  \Illuminate\Http\Request  $request
    //  * @return \Illuminate\Http\Response
    //  */
    // public function store(Request $request, $user, $proposIdee)
    // {
    //     $input = $request->all();
    //     $validator = Validator::make($input, [
    //         'IdUser' => 'required|integer',
    //         'IdProposIdee' => 'required|integer',

    //     ]);

    //     if($validator->fails()){
    //         return response()->json([
    //             'status' => 'false',
    //             'message' => $validator->errors(),

    //         ],400);
    //     }

    //         // $liker = New Liker();
    //         // $liker->IdUser = $user;
    //         // $liker->IdProposIdee = $proposIdee;
    //         // $liker->save();



    //         return response()->json(['status'=>'true','message' => 'Enregistrer avec Succès!.'], 201);
    // }

    // /**
    //  * Store a newly created resource in storage.
    //  *
    //  * @param  \Illuminate\Http\Request  $request
    //  * @return \Illuminate\Http\Response
    //  */
    // public function store(Request $request)
    // {
    //     //Validation des data avec verification
    //     //Condition sur l'existence des identifiants de l'idée et du user
    //     //via une validation supplémentaire
    //     $request->validate([
    //         'IdUser'=>'required',
    //         'IdProposIdee' =>['required','exists:proposition_idees,id',function($attribute,$value,$fail) use($request){
    //             if(Liker::where('IdProposIdee',$value)->where('IdUser',$request->IdUser)->exists()){
    //                 return $fail("Vous avez déja liké cette proposition d'idée");
    //             }
    //         }]
    //       ]);

    //      //Enregistrement des data ,sinon enregistrer à nouveau le commentaire
    //      $like = Liker::create([
    //         "IdUser"=>$request->IdUser,
    //         "IdProposIdee"=>$request->IdProposIdee,
    //      ]);

    //      //dd($like);

    //     //Creons une variable qui est un tableau
    //     $data[] =$request->IdUser;

    //     //Creons une varibale qui récupere les identifiants des utilisateurs  qui ont likés

    //     $old_like_par = json_decode($like->proposIdee->liker_par, true);

    //     //Condition sur la récupération des data
    //     if(is_array($old_like_par)){
    //         $data = array_merge($data,$old_like_par);
    //     }

    //     //Mise à jour de la table lors d'un like par un user
    //     $like->proposIdee->update([
    //         'liker_par'=>json_encode($data)
    //     ]);
    //     //retourne les informations
    //     return response()->json($like);

    // }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $like = Liker::with('user','proposIdee')->latest()->get();
        return response()->json($like);
    }

      /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    // public function store(Request $request, $user, $proposIdee)
    // {
    //     $input = $request->all();
    //     $validator = Validator::make($input, [
    //         'IdUser' => 'required|integer',
    //         'IdProposIdee' =>['required','exists:proposition_idees,id',function($attribute,$value,$fail) use($request){
    //             if(Liker::where('IdProposIdee',$value)->where('IdUser',$request->IdUser)->exists()){
    //                 return $fail("Vous avez déja liké cette proposition d'idée");
    //             }
    //         }]

    //     ]);

    //     if($validator->fails()){
    //         return response()->json([
    //             'status' => 'false',
    //             'message' => $validator->errors(),

    //         ],400);
    //     }

    //         $liker = New Liker();
    //         $liker->IdUser = $user;
    //         $liker->IdProposIdee = $proposIdee;
    //         $liker->save();

    //         return response()->json(['status'=>true,'message' => 'Enregistrer avec Succès!.'], 201);
    // }


    // /**
    //  * Display the specified resource.
    //  *
    //  * @param  int  $id
    //  * @return \Illuminate\Http\Response
    //  */
    // public function show(Liker $like,$id)
    // {
    //     //
    //     $like =Liker::find($id);
    //     return response()->json($like);

    //     //return response()->json($like->load('user','proposIdee'));
    // }

    public function store(Request $request)
    {
        //Validation des data avec verification
        //Condition sur l'existence des identifiants de l'idée et du user
        //via une validation supplémentaire
        $request->validate([
            'IdUser'=>'required',
            'IdProposIdee' =>['required','exists:proposition_idees,id',function($attribute,$value,$fail) use($request){
                if(Liker::where('IdProposIdee',$value)->where('IdUser',$request->IdUser)->exists()){
                    return $fail("Vous avez déja liké cette proposition d'idée");
                }
            }]
          ]);

         //Enregistrement des data ,sinon enregistrer à nouveau le commentaire
        //  $like = Liker::create([
        //     "IdUser"=>$request->IdUser,
        //     "IdProposIdee"=>$request->IdProposIdee,
        //  ]);
                  $like = New Liker();
                  $like->IdUser = $request->IdUser;
                  $like->IdProposIdee = $request->IdProposIdee;
                  $like->save();

         //dd($like);

        //Creons une variable qui est un tableau
        $data[] =$request->IdUser;

        //Creons une varibale qui récupere les identifiants des utilisateurs  qui ont likés

        $old_like_par = json_decode($like->proposIdee->liker_par, true);

        //Condition sur la récupération des data
        if(is_array($old_like_par)){
            $data = array_merge($data,$old_like_par);
        }

        //Mise à jour de la table lors d'un like par un user
        $like->proposIdee->update([
            'liker_par'=>json_encode($data)
        ]);
        //retourne les informations
        return response()->json($like);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, $id, $user, $proposIdee)
    // {
    //     $input = $request->all();
    //     $validator = Validator::make($input, [
    //         'Description' =>'required|string|max:255',
    //         'IdUser' => 'required|integer',
    //         'IdProposIdee' => 'required|integer',

    //     ]);

    //     if($validator->fails()){
    //         return response()->json([
    //             'status' => 'false',
    //             'message' => $validator->errors(),
    //         ],400);
    //     }

    //         $liker = Liker::findOrFail($id);
    //         $liker->IdUser = $user;
    //         $liker->IdProposIdee = $proposIdee;
    //         $liker->update();

    //         return response()->json(['status'=>'true','message' => 'Modifier avec Succès!.'],201);
    // }

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

            $liker = Liker::findOrFail($id);
            $liker->IdUser = $user;
            $liker->IdProposIdee = $proposIdee;
            $liker->update();

            return response()->json(['status'=>'true','message' => 'Modifier avec Succès!.'],201);
    }

        /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Liker $like)
    {
        $like->delete();
        return response ()->json("Suppression effectuée avec succès");
    }

    /**
     * Disliker une idée
     *
     * @param Request $request
     * @return void
     */
    public function dislike(Request $request){
        $validator = Validator::make($request->all(),[
            'IdUser' =>'required',
            'IdProposIdee' =>'required|exists:proposition_idees,id',
        ]);

        //Recupérer l'id de l'utilisateur ainsi que son idée proposé
        $like = $request->id->likes->where('IdProposIdee',$request->IdProposIdee)->first();
        dd($like);

        //Condition verifiant s'il a likés ou pas
        if(!$like){
            abort(403);
        }

        //Suppression d'un user en fonction de son identifiant dans le json_format
        $data[]= $request->id();
        //Recupere l'ancien like emis par un user ,
        $old_liker_par = json_decode($like->proposIdee->liker_par,true);
        //Enregistre le nouveau
        $new_liker_par = array_diff($old_liker_par,$data);

        // Mise à jour de la proposition d'idée
        $like->proposIdee->update([
            'liker_par' => json_encode($new_liker_par),
        ]);

        //On supprime le like emis par user
        $like->delete();
    }



}
