<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ReportMonthAbsenceRequest;
use App\Models\Checkinout;
use App\Models\Department;
use App\Models\Employee;
use App\Models\Keterangan;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

/**
 * Class ReportMonthAbsenceCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class ReportMonthAbsenceCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     *
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\ReportMonthAbsence::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/reportmonthabsence');
        CRUD::setEntityNameStrings('Report Absen Bulanan', 'Report Absen Bulanan');
        $this->crud->setShowView('month.detail');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->removeButton('create');
        $this->crud->removeButton('update');
        $this->crud->removeButton('delete');
        // $this->crud->enableDetailsRow();
        // $this->crud->allowAccess('month.detailket');
        // $this->crud->setDetailsRowView('month.detailket');

        // simple filter
        $this->crud->addFilter([
            'type'  => 'text',
            'name'  => 'name',
            'label' => 'Nama'
        ],
        false,
        function($value) { // if the filter is active
            $this->crud->addClause('where', 'name', 'LIKE', "%$value%");
        });

        $this->crud->addColumn([
            'label'     => 'Departemen', // Table column heading
            'type'      => 'select',
            'name'      => 'defaultdeptid', // the column that contains the ID of that connected entity;
            'entity'    => 'department', // the method that defines the relationship in your Model
            'attribute' => 'DeptName', // foreign key attribute that is shown to user
            'model'     => "App\Models\Department", // foreign key model
        ]);

        $this->crud->addColumn([
            'name' => 'badgenumber', // The db column name
            'label' => "Nomor", // Table column heading
            'type' => 'Text'
        ]);

        $this->crud->addColumn([
            'name' => 'name', // The db column name
            'label' => "Nama", // Table column heading
            'type' => 'Text'
        ]);

        $this->crud->addColumn([
            'name'     => 'userid',
            'label'    => 'Kehadiran',
            'type'     => 'closure',
            'function' => function($entry) {
                return $entry->attendance->count;
            }
        ]);

        $this->crud->enableExportButtons();
        $this->crud->enableResponsiveTable();

        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']);
         */
    }

    /**
     * Define what happens when the Create operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(ReportMonthAbsenceRequest::class);

        CRUD::setFromDb(); // fields

        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number']));
         */
    }

    /**
     * Define what happens when the Update operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }

    public function filter(Request $request)
    {
        if (!empty($request->month) && !empty($request->department)) {

            $perusahaan = Department::where('DeptID', $request->department)->first();
            $month = $request->month;
            \Alert::add('success', 'Berhasil Filter Data ' . date('M Y', strtotime($request->month)) . ' dan ' . $perusahaan->DeptName)->flash();
            return view(backpack_view('listMonth'), compact('month', 'perusahaan'));

        } elseif (!empty($request->month) && empty($request->department)) {

            $month = $request->month;
            \Alert::add('success', 'Berhasil Filter Data ' . date('M Y', strtotime($request->month)))->flash();
            return redirect('/admin/reportmonthabsence')->with(compact(['month']));

        } elseif (empty($request->month) && !empty($request->department)) {

            $perusahaan = Department::where('DeptID', $request->department)->first();
            \Alert::add('success', 'Berhasil Filter Data ' . $perusahaan->DeptName)->flash();
            return redirect('/admin/reportmonthabsence')->with(compact(['perusahaan']));

        } else {

            \Alert::add('danger', 'Gagal Filter Data')->flash();
            return redirect()->back();
        }
    }

    public function ket(Request $request)
    {
        if ($request->keterangan == "Proyek") {
            $validator = Validator::make($request->all(), [
                'date' => 'required',
                'keterangan' => 'required',
                'proyek' => 'required',
            ]);
        } else {
            $validator = Validator::make($request->all(), [
                'date' => 'required',
                'keterangan' => 'required',
            ]);
        }

        if ($validator->fails()) {
            \Alert::add('danger', 'Form belum lengkap')->flash();
            return redirect()->back();
        }

        $new_ket = new Keterangan;
        $new_ket->userid = $request->userid;
        $new_ket->date = $request->date;
        if ($request->keterangan == "Proyek") {
            $new_ket->keterangan = $request->keterangan . " " . $request->proyek;
        } else {
            $new_ket->keterangan = $request->keterangan;
        }
        $new_ket->save();
        \Alert::add('success', 'Berhasil Menambah data Item')->flash();
        return redirect()->back();
    }

    public function getmonth(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'month' => 'required',
            'userid' => 'required',
        ]);

        if ($validator->fails()) {
            \Alert::add('danger', 'Form belum lengkap')->flash();
            return redirect()->back();
        }

        $day = \Carbon\Carbon::parse($request->month);
        $dates = [];

        for($i=1; $i < $day->daysInMonth + 1; ++$i) {
            $dates[] = \Carbon\Carbon::createFromDate($day->year, $day->month, $i)->format('d-M-Y');
        }
        $sum_hour = 0;
        $sum_minute = 0;
        $user = Employee::findOrFail($request->userid);

        $this->data['month'] = [
            'day' => $dates,
            'jam' => $sum_hour,
            'menit' => $sum_minute,
            'user' => $user,
            'month' => $day,
        ];

        \Alert::add('success', 'Berhasil Mencari Data')->flash();
        return view('month.month', $this->data);
    }
}
