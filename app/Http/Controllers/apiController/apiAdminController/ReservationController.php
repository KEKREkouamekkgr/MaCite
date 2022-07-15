<?php

namespace App\Http\Controllers\apiController\apiAdminController;

use Carbon\Carbon;
use App\Models\Paiement;
use App\Models\Reservation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function reserver(Request $request, int $IdUser)
    {

        $input = $request->all();
        $validator = Validator::make($input,[

           'prix' =>'int|required',
           'reseau' => 'string|required',
         ]);
         if($validator->fails()){
             return response()->json([
                 'message'=>$validator->errors(),
                 'status' => false,
             ],403);
         }


        //selection de la place disponible
        $query1=DB::select("SELECT id FROM place_parkings  WHERE status ='libre' ORDER BY id ASC LIMIT 1");

        if($query1==null){
            return response()->json([
                'message'=>'Aucune place disponible',
                'status' => false,
            ],403);
        }else{

            //selection de la place disponible
            $res=json_decode(json_encode($query1[0]),true);
            $Idplace = $res['id'];

             //Reservation de la place
        $reservation = new Reservation();
        $reservation->IdUser = $IdUser;
        $reservation->IdPlaceParking = $Idplace;
        $reservation->palgeHoraire = $request->input('plageHoraire');
        $reservation->prix = $request->input('prix');
        $reservation->created_at = Carbon::Now();
        $reservation->updated_at = Carbon::Now();
        $reservation->save();

        $paiement = new Paiement();
        $paiement->montant = $request->input('prix');
        $paiement->status = 'Payé';
        $paiement->reseau=$request->input('reseau');
        /* Utilisateur Reservation  */
        // $reservationUser = 1;
        $reservationUser = DB::table('reservations')
            ->join('users', 'reservations.IdUser', '=', 'users.id')
            ->where('id',$IdUser)
            ->orderBy('reservation.created_at','desc')->first()
            ->select('reservations.id');
        $paiement->IdReservation = $reservationUser;
        $paiement->created_at = Carbon::Now();
        $paiement->updated_at = Carbon::Now();
        $paiement->save();





        //Paiement de la place

        $query2=DB::update("UPDATE place_parkings SET status ='occupée' WHERE id = $Idplace");


        }
        return response()->json([
            "status"=>true,
            "badge"=> $reservation,
        ],201);



        //Mise a jour de la place


    }









}
