<?php

namespace App\Http\Controllers\apiController\apiAdminController\apiGestionDecision;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Models\adminModels\TypeInformation;

class TypeInformationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $typeInfo = TypeInformation::All();

        return response()->json($typeInfo,200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        $validator = Validator::make($input, [
            'titre' =>'required',
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => 'false',
                'message' => $validator->errors()
            ],400);
        }

        $typeInformation = New TypeInformation();
        $typeInformation->titre = $request->input('titre');
        $typeInformation->save();

     return response()->json(['status' => 'true','message' => 'insertion réussir'],201);
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
        $input = $request->all();
        $validator = Validator::make($input, [
            'titre' =>'required',
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => 'false',
                'message' => $validator->errors()
            ],400);
        }

        $typeInformation = TypeInformation::findOrFail($id);
        $typeInformation->titre = $request->input('titre');
        $typeInformation->save();

     return response()->json(['status' =>'true','message' => 'Modification Soumis avec Succès!'],201);
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
