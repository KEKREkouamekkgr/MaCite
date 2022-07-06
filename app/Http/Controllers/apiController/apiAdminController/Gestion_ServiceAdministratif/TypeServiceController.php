<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_ServiceAdministratif;

use App\Http\Controllers\Controller;
use App\Models\TypeService;
use Carbon\Carbon;
use Illuminate\Http\Request;

class TypeServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $typeService = TypeService::orderBy('created_at', 'desc')->get();
        return response()->json($typeService, 200);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $typeService = New TypeService();
        $typeService->typeService = $request->input('typeService');
        $typeService->created_at= Carbon::Now();
        $typeService->updated_at = Carbon::Now();
        $typeService->save();
        return response()->json([
            "status"=>"True",
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

        $typeService = TypeService::findOrFail($id);

        if(is_null($typeService))
        {
            return response()->json(["status"=>"false","message"=>"Idée non trouvée!"],400);
        }
        return response()->json($typeService ,200);


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

        $typeService = TypeService::findOrFail($id);
        $typeService->typeService = $request->input('typeService');
        $typeService->updated_at = Carbon::Now();
        $typeService->update();
        return response()->json([
            "status"=>"True",
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
        $typeService = TypeService::findOrFail($id);
        $typeService->delete();
        return response()->json(['Supression effectué avec succès',200]);
    }
}
