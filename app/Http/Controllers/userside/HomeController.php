<?php

namespace App\Http\Controllers\userside;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use \App\Models\settings;
use \App\Models\contactUs;
use \App\Models\categoriesmodel;

use \App\Models\vehicleHistoryReports;
use \App\Models\additionalHistory;
use \App\Models\ownershipHistory;
use \App\Models\titleHistory;
use \App\Models\ownersList;

use \App\Models\glossary;
use \App\Models\reportSetting;


class HomeController extends Controller
{



    protected $baseUrl;

    public function __construct()
    {
        $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
        $host = $_SERVER['HTTP_HOST'];
        $this->baseUrl = $requestScheme . '://' . $host;
    }

    
    public function home (Request $req){
        $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
        $host = $_SERVER['HTTP_HOST'];
        $baseUrl = $requestScheme . '://' . $host;

        $settingsData = settings::all()->first();    
        return view('home', compact(['baseUrl','settingsData']));
    }
    
    public function fillreport (Request $req){
        $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
        $host = $_SERVER['HTTP_HOST'];
        $baseUrl = $requestScheme . '://' . $host;
        $settingsData = settings::all()->first();    
        
        $resp = [];
        $data = vehicleHistoryReports::where('vId', $req->vid)->where('showReports', 1)->first();
        if ($data) {
            $additionalHistory = additionalHistory::where('vId', $req->vid)->get()->first();
            $ownershipHistory = ownershipHistory::where('vId', $req->vid)->get()->first();
            $titleHistory = titleHistory::where('vId', $req->vid)->get()->first();
            $ownersList = ownersList::where('vId', $req->vid)->get();

            $glossary = glossary::all();
            $reportSetting = reportSetting::first();
            $settings = settings::first();
            $resp = [
                'baseUrl' => $this->baseUrl,
                'settings' => $settings,
                'vehicleHistory' => $data,
                // 'additionalHistory' => $additionalHistory,
                // 'ownershipHistory' => $ownershipHistory,
                // 'titleHistory' => $titleHistory,
                // 'ownersList' => $ownersList,
                // 'glossary' => $glossary,
                // 'reportSetting' => $reportSetting,
            ];
        } else {
            $vid = $req->vid;
            $vtype = $req->type;
            // return redirect()->route('notfound');
            return view('manualfillreport', compact(['baseUrl','settingsData','resp','vid','vtype']));
        }

        return view('fillreport', compact(['baseUrl','settingsData','resp']));
    }
    
    
    
    public function sendcontactusmsg (Request $req){
        $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
        $host = $_SERVER['HTTP_HOST'];
        $baseUrl = $requestScheme . '://' . $host;
        $settingsData = settings::all()->first();    
         $check = contactUs::create([
                'name' => $req->name,
                'email' => $req->email,
                'message' => $req->message
            ]);
            
        $stoastmsg = "Message Sent";
        $ftoastmsg = "Try Later !";
        if($check){
            return view('home', compact(['baseUrl','settingsData','stoastmsg']));
        }else{
            return view('home', compact(['baseUrl','settingsData','ftoastmsg']));
        }
        // return redirect()->route('home')->with('stoastmsg', "Message Sent");
        // }else{
        //     return redirect()->route('home')->with('ftoastmsg', 'Try Later ');
        // }
    }
}