<?php

namespace App\Http\Controllers\userside;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;


class pdfController extends Controller
{
    public function downloadPdfF()
    {
        // $pdf = App::make('dompdf.wrapper');
        $pdf = Pdf::loadView('pdf');
  
        return $pdf->stream();

        // $pdf = Pdf::loadView('pdf', $data);
        // $pdf = Pdf::loadView('pdf');
        // return $pdf->download('1.pdf');
    }
}