<?php

namespace App\Http\Controllers\apiController\apiAdminController\Parking;

use Carbon\Carbon;
use App\Models\Parking;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class ParkingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $parkings = Parking::orderBy('created_at', 'desc')->with('commune:id,nom')->get();
        return response()->json($parkings, 200);
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
            'totalPlace'=>'required',
            'IdCommune'=>'required|int',
            'nomProprietaire'=>'required|String',
            'nomParking'=>'required|String',
            'jsonLatLong' =>'required'
        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ],400);
        }

        $parking = New Parking();
        $parking->totalPlace = $request->input('totalPlace');
        $parking->nomProprietaire =$request->input('nomProprietaire');
        $parking->nomParking =$request->input('nomParking');
        $parking->IdCommune = $request->input('IdCommune');
        $parking->jsonLatLong = $request->input('jsonLatLong');
        $parking->created_at = Carbon::Now();
        $parking->updated_at = Carbon::Now();
        $parking->save();

        $parkings = Parking::orderByDesc('created_at')->with('commune:id,nom')->first();
        return response()->json([
            "status"=>true,
            "donnees"=>$parkings,
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
        $parking = Parking::findOrFail($id);
         return response()->json([
             "status"=>true,
             "donnee"=>$parking,
         ],200);
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
            'totalPlace'=>'required',
            'IdCommune'=>'required|int',
            'nomProprietaire'=>'required|String',
            'nomParking'=>'required|String',
            'jsonLatLong' =>'required'
        ]);

        if($validator->fails()){
            return response()->json([
                'message'=>$validator->errors(),
                'status' => false,
            ],400);
        }
       $parking = Parking::findOrFail($id);
       $parking->totalPlace = $request->input('totalPlace');
       $parking->nomProprietaire =$request->input('nomProprietaire');
       $parking->nomParking =$request->input('nomParking');
       $parking->IdCommune = $request->input('IdCommune');
       $parking->jsonLatLong = $request->input('jsonLatLong');
       $parking->created_at = Carbon::Now();
       $parking->updated_at = Carbon::Now();
       $parking->update();
        $parkings = Parking::orderBy('created_at','desc')->with('commune:id,nom')->first();
        return response()->json([
            "status"=>true,
            "donnee"=>$parkings,
        ],203);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $idee = Parking::findOrfail($id);
        $idee->delete();
        return response()->json('Supression effectué avec succès',204);
    }
}
