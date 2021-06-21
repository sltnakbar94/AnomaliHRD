<?php

namespace App\Http\Controllers\Admin;

use App\Models\Checkinout;
use App\Models\Department;
use App\Models\Employee;
use App\Models\Keterangan;
use App\Models\Userinfo;
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

    public function storeAbsenLapangan(Request $request)
    {
        dd(date("Y-m-d H:i:s", strtotime(now())), date('Y-m-d H:i:s'));
        $keterangan = new Keterangan();
        $keterangan->userid = $request->userid;
        $keterangan->date = date("Y-m-d", strtotime(now()));
        $keterangan->keterangan = "Tugas luar kantor";
        $keterangan->status = "Approve";
        $keterangan->keterangan_tambahan = $request->keterangan_tambahan;
        $keterangan->keterangan_tambahan = $request->keterangan_tambahan;
        $keterangan->lat = $request->lat;
        $keterangan->lng = $request->lng;
        if($request->hasFile('upload_data')) {
            $file = $request->file('upload_data');
            $path = $file->storeAs('absen-lapangan', strtolower($keterangan->userid) .'-' . date('Ymdhis') . '.' . $file->getClientOriginalExtension() , 'public');
            $keterangan->upload_data = $path;
        }
        $absence = new Checkinout();
        $absence->userid = $request->userid;
        $absence->checktime = date("Y-m-d H:i:s", strtotime(now()));
        $absence->checktype = "0";
        $absence->verifycode = 1;
        $absence->SN = Userinfo::find($request->userid)->SN;
        $absence->sensorid = Checkinout::where('SN', '=', Userinfo::find($request->userid)->SN)->first()->sensorid;
        $absence->WorkCode = "";
        $absence->Reserved = "1";
        $keterangan->save();
        $absence->save();
        \Alert::add('success', 'Berhasil melakukan Absen')->flash();
        return redirect()->route('backpack.dashboard');
    }
}
