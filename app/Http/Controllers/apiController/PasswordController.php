<?php

namespace App\Http\Controllers\apiController;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class PasswordController extends Controller
{
    public function forgot(Request $request)
    {
        $this->validate($request, [
            'email' =>'|string||email'
        ]);
        $email =$request->email;

        if(User::where('email', $email)->doesntExist()){
            return response(['message'=> "Votre Email n'existe Pas!."], 400);
        }
        $token = Str::random(10);

        DB::table('password_resets')->insert([
            'email'=> $email,
            'token'=>$token,
            'created_at'=>now()->addHours(6)
        ]);

            //envoyer un Mail
         Mail::send('mail.password_reset',['token'=>$token], function($message) use ($email){
            $message->to($email);
            $message-> subject('Réinitialisation de Votre Mot de Passe.');

        });
        return response(['message' => 'SVP regardez vos Mails.'], 200);

    }

    public function reset(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'password'=> 'required|string|min:6|confirmed',
            'password_confirmation' =>'required'
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => false,
                'message' => $validator->errors()
            ],400);
        }

     $token = $request->token;
     $passwordRest = DB::table('password_resets')->where('token', $token)->first();

     if(!$passwordRest){
         return response(['message'=> 'Le Token n\'a été trouvé!'],200);
     }
     if(!$passwordRest->created_at >= now()){
         return response(['message'=> 'Token a Expiré!.'], 200);
     }

     $user = User::where('email', $passwordRest->email)->first();

     if(!$user){
            return response(['message'=>'L\'Utilisateur n\'existe pas.'], 200);
     }

     $user->password = Hash::make($request->password);
     $user->save();



  DB::table('password_resets')->where('token', $token)->delete();
 return response(['message'=> 'Votre Mot de Passe a été modifié avec succès!'],201);


    }

    public function oldPassword(Request $request, $userId){
        $input = $request->all();
        $validator = Validator::make($input, [
            'password'=>'required|string|min:6',
            //  'password_new'=>'required|string|min:6|confirmed',
            //  'password_new_confirmation'=>'required'
            'password_new'=>'required|string|min:6',
            'password_new_confirmation'=>'required|string|min:6'
        ]);



        if($validator->fails()){

            return response()->json([
                'status' => false,
                'message' => $validator->errors()
            ],400);
        }

        if($request->password_new != $request->password_new_confirmation){
            return response()->json([
                'status' => false,
                'message' => "Les Mots de mot passes ne concordent pas!."
            ],400);
        }

        $user = User::findOrFail($userId);
        if ($request->password ||
            $request->password_new ||
            $request->password_new_confirmation)
            {
            // si la saisie entrée pour le champs password correspond avec le mot de passe actuel de l'utilisateur...
            if (Hash::check($request->password, $user->password)){
                // le nouveau mot de passe de l'utilisateur sera haché et remplacera l'ancien mot de passe
                $user->update(['password' => bcrypt($request->password_new)]);
                //je redirige l'utilisateur sur son compte en lui signalant que son mot de passse a été modifié
                return response()->json(['user'=> $user,'status' => true, 'message'=>'Votre mot de passe a bien été modifié!'],203);
            }else{
                //en cas d'erreur, je redirige l'utilisateur sur son compte en lui signalant qu'il y a une erreur
                return response()->json(['message'=>'Houps, Une Erreur est Survénu. Votre mot de passe est Incorrecte'],400);
            }
          }
       }
     }

