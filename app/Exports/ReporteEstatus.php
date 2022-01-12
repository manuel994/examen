<?php
namespace App\Exports;

use App\Invoice;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use App\Estatus;

class ReporteEstatus implements FromView
{
    public function view(): View
    {
        return view('empleados.pdf', [
            'estatus' => Estatus::all()
        ]);
    }
}
