<?php

namespace App\Http\Controllers\userside;

use App\Events\ChatEvent;
use App\Http\Controllers\Controller;
use App\Models\UsersMsgs;
// use App\Models\settings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Auth;

use Illuminate\Support\Facades\Mail;
use App\Mail\Chat;

class SocketMsgsController extends Controller
{

    // public function chatslist(Request $request)
    // {
    //     // $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
    //     // $host = $_SERVER['HTTP_HOST'];
    //     // $baseUrl = $requestScheme . '://' . $host;
        
        
    //     $user = Auth::guard('rentalusers')->user();

        
    //     $chats = Msgs::where('sid', $user->id)
    //     ->orWhere('rid', $user->id)
    //     ->with(['fromuid', 'touid'])
    //     ->orderBy('id', 'desc')
    //     ->get();
        
    //     $singleid = [];
    //     $lastUsersMsgs = [];
        
    //     foreach ($chats as $msg) {
    //         if (!in_array($msg->sid, $singleid) && $msg->sid != $user->id) {
    //             $singleid[] = $msg->sid; 
    //             $lastUsersMsgs[] = $msg; 
    //         }
    //     }

    //     $settingsData = settings::first(); 
        
    //     if(count($lastUsersMsgs) < 1){
    //         $lastUsersMsgs = "no";
    //     }
        
    //     return view('usermsgs', compact(['lastUsersMsgs','chats','user']));
    // }



    public function setCookie(Request $req){
        try {
            $cookie = cookie('uemail', $req->email, 2628000); // 2628000 = 1 month
            return response()->json([
                'message' => 'success',
                'result' => "User Created",
            ], 400);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'error',
                'result' => $e->getMessage(),
            ], 400);
        }
    }
    
    public function sendmsg(Request $req)
    {
        $validator = Validator::make($req->all(), [
            // 'rid' => 'required|string',
            'msg' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'errors' => $validator->messages(),
            ], 400);
        }
        
        $message = UsersMsgs::create([
            'sid' => $req->sid,
            'rid' => $req->rid,
            'msg' => $req->msg,
        ]);
        
        event(new ChatEvent($message));

        return response()->json([
            'message' => 'Sent',
            'result' => $message,
        ], 201);
    }

    public function getchats(Request $request)
    {
        $sid = $request->sid;
        $messages = UsersMsgs::where(function ($query) use ($sid) {
            $query->where('sid', $sid)->where('rid', "admin");
        })->orWhere(function ($query) use ($sid) {
            $query->where('sid', "admin")->where('rid', $sid);
        })->get();

        return response()->json([
            'message' => 'All Chats',
            'result' => $messages,
        ], 200);
    }
}