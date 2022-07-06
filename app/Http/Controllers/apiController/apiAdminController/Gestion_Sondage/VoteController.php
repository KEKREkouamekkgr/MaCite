<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage;

use App\Models\Vote;
use App\Models\Option;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class SondageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        $vote = Vote::all();

        return response()->json($vote,200);
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
                "IdOption"=>"required",
                'IdUser'=>'required',
            ]);

            if($validator->fails()){
                return response()->json([
                    'status' => false,
                    'message' => $validator->errors(),

                ],400);
            };

            $vote = new Vote();
            $vote->IdOption = $request->input('IdOption');
            $vote->IdUser = $request->input('IdUser');

            $vote->save();

         //Recupérons le notre de vote émis pour une option
        //  $option = Option::find($vote->IdOption);
        //  $option->increment('point');

        return response()->json($vote,201);
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Vote  $vote
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Vote $vote)
    {
        //mise à jour du champs vote

        $validator = Validator::make($request->all(),[
            'option_id' => ['required'],
            'user_id' => ['required']

        ]);
            $vote->option_id = $request->option_id;
            $vote->user_id =  auth()->user()->id;
            $vote->save();
           //dd($vote);

           return response()->json($vote,200);
    }

        public function show(Vote $vote)
        {
            //Affiche tout les utilisateurs ayant voté
            //return  new VoteResource($vote->load('user'));

            //Détails sur  un vote
            return response()->json($vote->load('user'),200);
        }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Vote  $vote
     * @return \Illuminate\Http\Response
     */
    public function destroy(Vote $vote)
    {
        //Suppression du sondage
        $vote->delete();
        response()->json(
            [
                'message'=>'Suppression effectuée avec succes'
            ],204
        );
    }
}
