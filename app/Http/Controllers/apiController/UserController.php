<?php
namespace App\Http\Controllers\apiController;

use Carbon\carbon;
use App\Models\User;
use App\Models\Commune;
use Illuminate\Http\Request;
use App\Models\TypeUtilisateur;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\adminModels\RolePermission;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {

        $input = $request->all();
        $validator = Validator::make($input, [
            'name' =>'required',
            'email' =>'required||unique:users,email',
            'prenom' =>'required',
            'phone' =>'required||unique:users,phone',
            'sexe' =>'required',
            'date_naissance' =>'nullable',
            'lieu_naissance' =>'required',
            'IdCommune' =>'required',
            'IdTypeUtilisateur' =>'required',
            'password' =>'required',
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => false,
                'message' => $validator->errors()
            ],200);
        }

        $user = new User();
        //insertion de l'images dans la base de la base de données
        if($request->hasfile('image'))
        {
             $photo = $request->file('image');
             $extension = $photo->getClientOriginalName();
             $fileName = time().'_'.$extension;
             $photo->move(public_path('uploads/ImageUser/'),$fileName);
             $user->image = $fileName;
        }
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->prenom = $request->input('prenom');
        $user->phone = $request->input('phone');
        $user->sexe = $request->input('sexe');
        $user->date_naissance = $request->input('date_naissance');
        $user->lieu_naissance= $request->input('lieu_naissance');
        $user->IdCommune = $request->input('IdCommune');
        $user->IdTypeUtilisateur = $request->input('IdTypeUtilisateur');
        $user->password = Hash::make($request->input('password'));
        $user->created_at = carbon::now();
        $user->updated_at = carbon::now();
        $user->email_verified_at = carbon::now();
        $user->save();




        if (Auth::attempt(['phone' => $request->input('phone'), 'password' => $request->input('password')])) {
        $user= Auth::user();

        $membre = new RolePermission();
        $membre->IdUser =  Auth::user()->id;
        $membre->IdTypeUtilisateur = 2;
        $membre->created_at = carbon::now();
        $membre->updated_at = carbon::now();
        $membre->save();

        $IdCommune = Commune::where("id", $user->IdCommune)->value('nom');
        $IdTypeUtilisateur = TypeUtilisateur::where("id", $user->IdTypeUtilisateur)->value('profil');
        $data= [
            "id" => $user->id,
            "name" => $user->name,
            "email "=>$user->email,
            "prenom"=> $user->prenom,
            "phone"=> $user->phone,
            "sexe"=> $user->sexe,
            "date_naissance"=> $user->date_naissance,
            "lieu_naissance"=> $user->lieu_naissance,
            "IdCommune"=>$IdCommune,
            "IdTypeUtilisateur"=>$IdTypeUtilisateur,

        ];


        return response()->json([
            'status' => true,
            'message' => 'Inscription réussir',

            'data'=>$data

        ],201);

        // return UserResource::collection(User::get());

    }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {

        $loginData = $request->validate([
            'phone' => 'required',
            'password' => 'required'
        ]);

        if (!auth()->attempt($loginData)) {
            return response(['message' => 'Vos Informations sont Incorrectes!.','status'=>'False'],400);
        }

      if (Auth::attempt(['phone' => $request->input('phone'), 'password' => $request->input('password')])) {
        $user= Auth::user();
        $Commune = Commune::where("id", $user->IdCommune)->value('nom');
        $IdTypeUtilisateur = TypeUtilisateur::where("id", $user->IdTypeUtilisateur)->value('profil');

        /**
         *  @var User $user
         */
       $accessToken = $user->createToken('authToken');
     //  $accessToken = $user->createToken($user->name);

        $data= [
            "id" => $user->id,
            "name" => $user->name,
            "email"=>$user->email,
            "prenom"=> $user->prenom,
            "phone"=> $user->phone,
            "sexe"=> $user->sexe,
            "date_naissance"=> $user->date_naissance,
            "lieu_naissance"=> $user->lieu_naissance,
            "Commune"=> $Commune,
            "Idcommune"=> $user->IdCommune,
            "IdTypeUtilisateur"=>$IdTypeUtilisateur,
            "token"=>$accessToken->accessToken,
            "token_expires_at"=> $accessToken->token->expires_at
        ];


        return response()->json([
            'status' => true,
            'message' => 'Connexion réussir',
            'data'=>$data
        ],201);
     }
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
        $validator = Validator::make($input, [
            'name' =>'string|max:255',
            'email' => 'string|email|max:255',
            'prenom' =>'string|max:255',
            'phone' =>'nullable',
            'sexe' =>'nullable',
            'date_naissance' =>'nullable',
            'lieu_naissance' =>'nullable',
            'IdCommune' =>'nullable',

        ]);

        if($validator->fails()){

            return response()->json([
                'status' => false,
                'message' => $validator->errors(),

            ],400);
        }


            $user = User::findOrFail($id);
            //insertion de l'images dans la base de la base de données
        if($request->hasfile('image'))
        {
             $photo = $request->file('image');
             $extension = $photo->getClientOriginalName();
             $fileName = time().'_'.$extension;
             $photo->move(public_path('uploads/ImageUser/'),$fileName);
             $user->image = $fileName;
        }
            $user->name = $request->input('name') ?? $user->name ;
            $user->email = $request->input('email') ?? $user->email;
            $user->prenom =$request->input('prenom') ?? $user->prenom;
            $user->phone = $request->input('phone') ?? $user->phone;
            $user->sexe = $request->input('sexe') ?? $user->sexe;
            $user->date_naissance = $request->input('date_naissance') ?? $user->date_naissance;
            $user->lieu_naissance= $request->input('lieu_naissance') ?? $user->lieu_naissance;
            $user->IdCommune = $request->input('IdCommune') ?? $user->IdCommune;
            $user->updated_at = carbon::now() ?? $user->updated_at;;
            $user->update();

            return response()->json(['status'=>true,'message' => 'Modification soumis avec Succès!.'],201);
        }



    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        return response()->json(['status'=>true,'message' => 'Suppression réussie'],200);

    }

    /*
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function usersCommunes($commune)
    {
     $usersCommunes = User::where("IdCommune",$commune)->with(['commune:id,nom','typeUtilisateur:id,profil'])->OrderByDesc('id')->get();
     return response()->json($usersCommunes,200);
    }


/*
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function userShow($id)
    {
     $userShow = User::findOrFail($id);

     if(is_null($userShow))
     {
         return response()->json(["status"=>"false","message"=>"Idée non trouvée!"],400);
     }
     return response()->json($userShow,200);
    }

    public function logout(Request $request){


        if (Auth::check()) {

            $request->user()->token()->revoke();

            Auth::user()->AauthAcessToken()->delete();

            // 2eme Methode
            // $accessToken = auth()->user()->token();
            // $token= $request->user()->tokens->find($accessToken);
            // $token->revoke();

            return response(['message' => 'You have been successfully logged out.'], 200);
                        return response()->json([
                            'status'    => 1,
                            'message'   => 'User Logout',
                        ], 200);
         }
    }





}
