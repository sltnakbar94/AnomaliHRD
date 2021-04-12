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

        $karyawan = array();
        $perusahaan = array();
        $color = array();
        foreach ($db->data['perusahaan'] as $item) {
            $count = json_decode($item->count, true);
            $karyawan[] = $count;

            $perusahaan[] = $item->DeptName;

            $color[] = '#' . str_pad(dechex(mt_rand(0, 0xFFFFFF)), 6, '0', STR_PAD_LEFT);
        }

        $this->chart = new Chart();
        $this->chart->labels([
            'Jumlah Karyawan',
        ]);
        $this->chart->load(backpack_url('charts/package-status'));

        $this->chart = new Chart();

        $this->chart->dataset('Jumlah Karyawan', 'pie', $karyawan)->backgroundColor($color);

        $this->chart->displayAxes(false);
        $this->chart->displayLegend(true);

        $this->chart->labels($perusahaan);
    }
}
