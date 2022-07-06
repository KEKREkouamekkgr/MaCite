<?php

namespace App\Http\Controllers\apiController;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\TypeUtilisateur;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class TypeUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $typeUserAll = TypeUtilisateur::All();

        return response()->json($typeUserAll, 200);
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
            'profil'=>'required|string|max:191'
        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ]);
        }

        $typeUser = New TypeUtilisateur();
        $typeUser->profil = $request->input('profil');
        $typeUser->save();

        return response()->json([
            "status"=>true,
            "message"=>"Insertion réussie!",
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

        $typeUser = TypeUtilisateur::findOrFail($id);


        if(is_null($typeUser))
        {
            return response()->json(["status"=>"false","message"=>"Idée non trouvée!"],400);
        }

        return response()->json($typeUser,200);
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
        $input = $request->all();

        $validator = Validator::make($input,[
            'profil'=>'required|string|max:191'
        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ]);
        }

        $typeUser = TypeUtilisateur::findOrFail($id);
        $typeUser->profil = $request->input('profil') ?? $typeUser->profil;
        $typeUser->update();

        return response()->json([
            "status"=>true,
            "message"=>"Modification réussie!",
        ],201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $typeUser = TypeUtilisateur::findOrFail($id);
        $typeUser->delete();
        return response()->json([
            "status" => true,
            "message" => "Suppression Réussie!",
        ],200);
    }

    public function userAgent($id)
    {
        $users = User::findOrFail($id);
        $userCommune = $users->IdCommune;
         //NB: 3 correspond a agent dans la table typeUsers
        //$usersCommunes = User::where('IdCommune',$userCommune)->where('IdTypeUtilisateur',3)->with(['commune:id,nom'])->get();

        $UserNomTypeUtilisateurAll= DB::table('users')
        ->join('type_utilisateurs', 'users.IdTypeUtilisateur', '=', 'type_utilisateurs.id')
        ->where('users.IdCommune',$userCommune)->where('type_utilisateurs.profil','agent')
        ->select("users.name","users.prenom","users.phone","users.email","type_utilisateurs.profil","users.created_at")
        ->get();

        return response()->json($UserNomTypeUtilisateurAll,200);
    }

    // public function userAdmin($id)
    // {
    //     $users = User::findOrFail($id);
    //     $userCommune = $users->IdCommune;
    //      //NB: 3 correspond a agent dans la table typeUsers
    //     //$usersCommunes = User::where('IdCommune',$userCommune)->where('IdTypeUtilisateur',3)->with(['commune:id,nom'])->get();

    //     $UserNomTypeUtilisateurAll= DB::table('users')
    //     ->join('type_utilisateurs', 'users.IdTypeUtilisateur', '=', 'type_utilisateurs.id')
    //     ->where('users.IdCommune',$userCommune)->where('type_utilisateurs.profil','admin')
    //     ->select("users.name","users.prenom","users.phone","users.email","type_utilisateurs.profil","users.created_at")
    //     ->get();

    //     return response()->json($UserNomTypeUtilisateurAll,200);
    // }

    public function userAdmin()
    {

         //NB: 3 correspond a agent dans la table typeUsers
        //$usersCommunes = User::where('IdCommune',$userCommune)->where('IdTypeUtilisateur',3)->with(['commune:id,nom'])->get();

        $UserNomTypeUtilisateurAll= DB::table('users')
        ->join('type_utilisateurs', 'users.IdTypeUtilisateur', '=', 'type_utilisateurs.id')
        -> where('type_utilisateurs.profil','admin')
        ->select("users.name","users.prenom","users.phone","users.email","type_utilisateurs.profil","users.created_at")
        ->get();

        return response()->json($UserNomTypeUtilisateurAll,200);
    }



}
