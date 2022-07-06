<?php

namespace App\Http\Controllers\apiController;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Projet;

class CountApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function usersCommunes($id)
    {
        $users = User::findOrFail($id);
        $userCommune = $users->IdCommune;
         //NB: 3 correspond a agent dans la table typeUsers
        //$usersCommunes = User::where('IdCommune',$userCommune)->where('IdTypeUtilisateur',3)->with(['commune:id,nom'])->get();

        $UserNomTypeUtilisateurAll= DB::table('users')
        ->join('type_utilisateurs', 'users.IdTypeUtilisateur', '=', 'type_utilisateurs.id')
        ->where('users.IdCommune',$userCommune)->where('type_utilisateurs.profil','agent')
        ->count();

        return response()->json($UserNomTypeUtilisateurAll,200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function projetsCommunes()
    {
        $nbreProjet = Projet::count('id');
        return response()->json($nbreProjet ,200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function informationsCommunes(Request $request, $idCommune)
    {
        $informationCommunes = DB::table('informations')
        ->where('IdCommune', $idCommune)
        ->count();
        return response()->json($informationCommunes ,200);
    }

        /**
     * Remove the specified resource from storage.
     *
     * @param  int  $IdCommune
     * @return \Illuminate\Http\Response
     */
    public function totalProbleme($IdCommune)
    {
        if(is_null($IdCommune)){
            return response()->json("veillez entrer un nombre");
        }if(!\is_string($IdCommune)){
            return response()->json("veillez a ce que vous entrez soit un nombre");
        }if($IdCommune<=0){
            return response()->json("veillez entrer un nombre superieur a zero");
        }
        $nb = DB::select("select * from problemes inner join users on problemes.IdUser = users.id WHERE users.IdCommune=".$IdCommune);
        $res =count($nb);
        if(empty($res)){
            return response()->json("Aucune de données");
        }else{
            return response()->json($res);
        }

    }


            /**
     * Remove the specified resource from storage.
     *
     * @param  int  $IdCommune
     * @return \Illuminate\Http\Response
     */
    public function totalSondage($IdCommune)
    {

        if(is_null($IdCommune)){
            return response()->json("veillez entrer un nombre");
        }if(!\is_string($IdCommune)){
            return response()->json("veillez a ce que vous entrez soit un nombre");
        }if($IdCommune<=0){
            return response()->json("veillez entrer un nombre superieur a zero");
        }

        $nb = DB::select("select * from sondages inner join users on sondages.IdUser = users.id WHERE users.IdCommune=".$IdCommune);
        $res =count($nb);

        if(empty($res)){
            return response()->json("Aucune de données");
        }else{
            return response()->json($res);
        }

    }


                /**
     * Remove the specified resource from storage.
     *
     * @param  int  $IdCommune
     * @return \Illuminate\Http\Response
     */
    public function totalCollecte($IdCommune)
    {

        if(is_null($IdCommune)){
            return response()->json("veillez entrer un nombre");
        }if(!\is_string($IdCommune)){
            return response()->json("veillez a ce que vous entrez soit un nombre");
        }if($IdCommune<=0){
            return response()->json("veillez entrer un nombre superieur a zero");
        }

        $nb = DB::select("select * from collectes inner join users on collectes.IdUser = users.id WHERE users.IdCommune=".$IdCommune);
        $res =count($nb);
        if(empty($res)){
            return response()->json("Aucune de données");
        }else{
            return response()->json($res);
        }

    }

            /**
     * Remove the specified resource from storage.
     *
     * @param  int  $IdCommune
     * @return \Illuminate\Http\Response
     */
    public function piechart($IdCommune)
    {

        if(is_null($IdCommune)){
            return response()->json("veillez entrer un nombre");
        }if(!\is_string($IdCommune)){
            return response()->json("veillez a ce que vous entrez soit un nombre");
        }if($IdCommune<=0){
            return response()->json("veillez entrer un nombre superieur a zero");
        }

        $proposition_idees = DB::select("select * FROM proposition_idees inner join users on proposition_idees.Iduser = users.id where users.IdCommune=".$IdCommune);
        $problemes = DB::select("select * from problemes inner join users on problemes.IdUser = users.id WHERE users.IdCommune=".$IdCommune);
        $sondages = DB::select("select * from sondages inner join users on sondages.IdUser = users.id WHERE users.IdCommune=".$IdCommune);

        $nbProposition_idee=count($proposition_idees);
        $nbProbleme=count($problemes);
        $nbSondage=count($sondages);

        $values = [$nbProposition_idee, $nbProbleme, $nbSondage];

        if(empty($values)){
            return response()->json("Aucun projet");
        }else{
            return response()->json($values);
        }

    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $IdCommune
     * @return \Illuminate\Http\Response
     */
    public function totalProjet($IdCommune)
    {

        if(is_null($IdCommune)){
            return response()->json("veillez entrer un nombre");
        }if(!\is_string($IdCommune)){
            return response()->json("veillez a ce que vous entrez soit un nombre");
        }if($IdCommune<=0){
            return response()->json("veillez entrer un nombre superieur a zero");
        }

        $nb = DB::select("select * FROM projets JOIN collectes ON projets.id = collectes.IdProjet JOIN users ON projets.IdUser = users.id WHERE users.IdCommune=".$IdCommune." ORDER BY projets.id DESC LIMIT 5");
        if(empty($nb)){
            return response()->json("Aucun projet");
        }else{
            return response()->json($nb);
        }

    }
}
