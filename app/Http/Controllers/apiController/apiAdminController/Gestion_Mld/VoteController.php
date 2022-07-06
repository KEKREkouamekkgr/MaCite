<?php

namespace App\Http\Controllers\apiController\apiAdminController\Gestion_Mld;

use App\Models\Vote;
use App\Models\Option;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class VoteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $vote = Vote::All()->orderByDesc('created_at')->get();
        return response()->json($vote,200);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
//     public function store(Request $request)
//     {
//         $input = $request->all();

//         $validator = Validator::make($input,[
//             'IdUser'=>'required|integer',
//             'IdOption'=>'required|integer'
//         ]);

//         if($validator->fails()){
//             return response()->json([
//                 'message'=>$validator->errors(),
//                 'status' => false,
//             ]);
//         }

//         $vote = New Vote();
//         $vote->IdUser = $request->input('IdUser');
//         $vote->IdOption = $request->input('IdOption');
//         $vote->save();

//         $point = 1;
//         $points = DB::table("options")->where('id',$request->input('IdOption'))->update([
//         'votes' => DB::raw('votes + '.$point)
//  ]);

//         return response()->json([
//             "status"=>true,
//             "message"=>"Insertion réussie!",
//             "vote"=>$vote,
//             "point"=>$points
//         ],201);
//     }


    public function store(Request $request)
    {
        //

        // $request->validate([
        //     "IdUser"=>['required', Rule::exists('users', 'id')],
        //     "IdOption"=>['required', Rule::exists('options', 'id')],
        // ]);

        $vote = Vote::create([
            "IdUser"=>$request->IdUser,
            "IdOption"=>$request->IdOption,
        ]);

        //dd($vote);

        //Incrementons le nombre de point lors d'un vote pour une option donnée
        $options = Option::find($request->IdOption);
        $options->increment('point');
        return response()->json($vote,201);

    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $vote = Vote ::findOrFail($id);



        if(is_null($vote))
        {
            return response()->json(["status"=>"false","message"=>"Idée non trouvée!"],400);
        }

         // $votsonde= DB::table('sondages')
        //     ->join('options', 'sondages.id', '=', 'options.Idsondage')
        //     ->select('options.libelle', 'options.point', 'sondages.description')
        //     ->get();

        $votsonde = DB::table('options')
        ->where('id', $vote)
        ->join('sondages', 'sondages.id', '=', 'options.Idsondage')
        ->select('options.libelle', 'options.point', 'sondages.description')
        ->get();
        return response()->json($vote,200);

    }




}
