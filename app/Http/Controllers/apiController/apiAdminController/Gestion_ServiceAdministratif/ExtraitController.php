<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_ServiceAdministratif;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Paiement;
use Illuminate\Http\Request;
use App\Models\ServiceAdminis;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\ExtraitNaissance;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Illuminate\Support\Arr;

class ExtraitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $afExtNais = ServiceAdminis::orderBy('id','desc')->with(['user:id,name,prenom,phone','service:id,typeService'])->get();
        return response()->json($afExtNais, 200);
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
          'jsonDonnee' => 'array|required',
          'nbreExemplaire' =>'int|required',
          'IdTypeService' => 'int|required',
          'IdUser' => 'int|required',
          'copieImage'=>'string|required',
        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ],403);
        }


    $array = mt_rand(1000, 9999);
    $random = $array;
    $generateCode = 'MC-'.$random;
    $extNais = New ServiceAdminis();
    $extNais->jsonDonnee = $request->input('jsonDonnee');
    $extNais->nbreExemplaire = $request->input('nbreExemplaire');
    $extNais->IdTypeService = $request->input('IdTypeService');
    $extNais->IdUser = $request->input('IdUser');
    $extNais->codeUnique = $generateCode;
    //insertion de l'images dans la base de la base de données
    if($request->hasfile('copieImage'))
    {
         $photo = $request->file('copieImage');
         $extension = $photo->getClientOriginalName();
         $fileName = time().'_'.$extension;
         $photo->move(public_path('uploads/ImageServiceAdminis/'),$fileName);
         $photo->copieImage = $fileName;
    }
    $extNais->copieImage = $request->input('');
    $extNais->created_at = carbon::now();
    $extNais->updated_at = carbon::now();
    $extNais->save();

    return response()->json(['status'=>true, 'message'=>'insérer avec succès'],201);
    }



    public function Show($id)
    {
    $extNais = ServiceAdminis::findOrFail($id);
    return response()->json(['status'=>true, 'donnees'=>$extNais],201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updated(Request $request, $id)
    {
        $input = $request->all();


    $extNais = ServiceAdminis::findOrFail($id);
    $extNais->jsonDonnee = $request->input('jsonDonnee');
    $extNais->nbreExemplaire = $request->input('nbreExemplaire');
    $extNais->IdTypeService = $request->input('IdTypeService');
    $extNais->updated_at = carbon::now();
    $extNais->update();

    return response()->json(['status'=>true, 'message'=>'Modifier avec succès'],203);
    }


}
