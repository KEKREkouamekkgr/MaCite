<?php

namespace App\Http\Controllers\apiController\apiAdminController;

use Carbon\Carbon;
use App\Models\Reservation;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class ReservationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $reservation = Reservation::orderBy('created_at', 'desc')->with(['user:id,name','paiement:id,status'])->get();
        return response()->json($reservation, 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $idPaiement, $idUser)
    {
        $input = $request->all();

        $validator = Validator::make($input,[
           'numPlace' => 'array|required',
           'IdPaiement' =>'int|required',
           'IdUser' => 'int|required'
         ]);

         if($validator->fails()){
             return response()->json([
                 'message'=>$validator->errors(),
                 'status' => false,
             ],403);
         }
        $reservation = new Reservation();
        $reservation->numPlace = $request->input('numPlace');
        $reservation->IdPaiement = $idPaiement;
        $reservation->IdUser = $idUser;
        $reservation->created_at = Carbon::Now();
        $reservation->updated_at = Carbon::Now();
        $reservation->save();
        $reservations = Reservation::orderByDesc('created_at')->with(['user:id,name','paiement:id,status'])->first();
        return response()->json([
            "status"=>true,
            "donnees"=> $reservations,
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
        //
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
