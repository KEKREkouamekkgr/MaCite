<?php

namespace App\Http\Controllers\MessageOrangeApi;

use App\Helpers\Sms;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class MessageController extends Controller
{


    public function send(Request $request)
    {

        $input = $request->all();
        $validator = Validator::make($input, [
            'phone' => 'required|numeric',
            'message' => 'required|max:255',

        ]);


        $this->sendSMS($request->input('phone'),$request->input('message'));

        return response()->json([$request->input('phone'),$request->input('message')],200);
    }

    public function sendSMS($phone, $message)
    {
        $config =[
            'clientId' => config('app.clientId'),
            'clientSecret' =>  config('app.clientSecret'),
    ];

        $osms = new Sms($config);

        $data = $osms->getTokenFromConsumerKey();
        $token = array(
            'token' => $data['access_token']
        );

        $response = $osms->sendSms(
        // sender
            'tel:+2250702969786',
            // receiver
            'tel:+225' . $phone,
            // message
            $message,
            'MaCité'
        );
    }
}



