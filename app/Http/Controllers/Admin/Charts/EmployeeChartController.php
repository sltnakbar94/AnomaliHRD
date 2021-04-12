<?php

namespace App\Http\Controllers\Admin\Charts;

use App\Http\Controllers\Admin\AdminController;
use Backpack\CRUD\app\Http\Controllers\ChartController;
use ConsoleTVs\Charts\Classes\Chartjs\Chart;

/**
 * Class EmployeeChartController
 * @package App\Http\Controllers\Admin\Charts
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class EmployeeChartController extends ChartController
{
    public function setup()
    {
        $db = new AdminController;

        $db->pieChart();

        dd($db);

        $this->chart = new Chart();
        $this->chart->labels([
            'Jumlah Karyawan',
        ]);
        $this->chart->load(backpack_url('charts/package-status'));

        $this->chart = new Chart();

        $this->chart->dataset('Jumlah Karyawan', 'pie', [
                (int)$db->data['dashboard']['stok_paket']['count'],
                (int)$db->data['dashboard']['paket_keluar']['count'],
            ])->backgroundColor([
                '#CD211F',
                '#FFA500',
            ]);

        $this->chart->displayAxes(false);
        $this->chart->displayLegend(true);

        $this->chart->labels(['Sisa Paket', 'Paket Keluar']);
    }
}
