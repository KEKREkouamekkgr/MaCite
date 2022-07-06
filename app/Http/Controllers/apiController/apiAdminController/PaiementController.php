<?php

namespace App\Http\Controllers\apiController\apiAdminController;

use Carbon\Carbon;
use App\Models\Paiement;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class PaiementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $paiement = Paiement::orderBy('created_at', 'desc')->get();
        return response()->json($paiement, 200);
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
            'montant'=> 'required|int',
            'reseau'=> 'required',
            'status'=> 'required|String',
        ]);
        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ],400);
        }
        $paiement = new Paiement();
        $paiement->montant = $request->input('montant');
        $paiement->reseau = $request->input('reseau');
        $paiement->status = $request->input('status');
        $paiement->created_at = Carbon::Now();
        $paiement->updated_at = Carbon::Now();
        $paiement->save();

        return response()->json([
            "status"=>true,
            "message"=>"Insertion réussie!",
        ],201);

    }


}
