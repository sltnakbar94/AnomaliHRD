<?php

namespace App\Http\Controllers\Admin;

use App\Models\Department;
use App\Models\Employee;
use Illuminate\Routing\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public $data = []; // the information we send to the view

    /**
     * Create a new controller instance.
     */
    public function __construct()
    {
        $this->middleware(backpack_middleware());
    }

    /**
     * Show the admin dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function dashboard(Request $request)
    {
        $this->data['title'] = trans('backpack::base.dashboard'); // set the page title
        $this->data['breadcrumbs'] = [
            trans('backpack::crud.admin')     => backpack_url('dashboard'),
            trans('backpack::base.dashboard') => false,
        ];
        $this->counter();

        $this->pieChart();

        return view(backpack_view('dashboard'), $this->data);
    }

    /**
     * Redirect to the dashboard.
     *
     * @return \Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
     */
    public function redirect()
    {
        return redirect(backpack_url('dashboard'));
    }

    public function counter()
    {
        $total_karyawan = Employee::count('userid');
        $total_perusahaan = Department::count('DeptID');
        // redis check here
        $this->data['dashboard'] = [
            'total_karyawan' => [
                'progress' => ($total_karyawan > 0) ? ($total_karyawan / $total_karyawan)  * 100 : 0,
                'count' => $total_karyawan,
            ],
            'total_perusahaan' => [
                'progress' => ($total_perusahaan > 0) ? ($total_perusahaan / $total_perusahaan) * 100 : 0,
                'count' => $total_perusahaan,
            ],
        ];
    }

    public function pieChart()
    {
        $employees = DB::select(DB::Raw("SELECT count(*) as count, departments.DeptName FROM `userinfo` JOIN departments ON userinfo.defaultdeptid = departments.DeptID GROUP BY userinfo.defaultdeptid ORDER BY departments.DeptName ASC"));

        $this->data['perusahaan'] = $employees;
    }

    public function absenLapangan()
    {
        $this->data['title'] = trans('Absen Lapangan'); // set the page title
        $this->data['breadcrumbs'] = [
            trans('backpack::crud.admin')     => backpack_url('absen-lapangan'),
            trans('Absen Lapangan') => false,
        ];

        return view(backpack_view('absen-lapangan'), $this->data);
    }
}
