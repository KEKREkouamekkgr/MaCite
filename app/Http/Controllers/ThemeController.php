<?php

namespace App\Http\Controllers;

use App\Models\Theme;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ThemeController extends Controller
{
    //
    public function index(){
        $theme = Theme::with('proposition_idees')->latest()->get();
         return response()->json($theme);
    }

     /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Validation des data

        $validator = Validator::make($request->all(),[
            'titre' => 'required |string |max:80',
        ]);

        //Si la validation échoue affiche les message d"erreurs
        if($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        //Traitement du formulaire

        $theme = Theme::create([
            'titre' => $request->titre,
        ]);

        return response()->json($theme);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Theme  $theme
     * @return \Illuminate\Http\Response
     */
    public function show($id,Theme $theme)
    {
        //
        $theme = Theme::find($id);
        return response()->json($theme);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Theme  $theme
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Theme $theme)
    {
        //Validation du formulaire

        $validator = Validator::make($request->all(),[
            'titre' => 'required'
        ]);

        //Traitement du formulaire
        $theme->titre= $request->titre;
        $theme->save();

        return response()->json($theme);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Theme  $theme
     * @return \Illuminate\Http\Response
     */
    public function destroy(Theme $theme)
    {
        //Supresssion du theme

        $delete = $theme->delete();

        return response()->json($delete);

    }



}
