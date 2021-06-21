<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\KeteranganRequest;
use App\Models\Employee;
use App\Models\Keterangan;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class KeteranganCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class KeteranganCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Keterangan::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/keterangan');
        CRUD::setEntityNameStrings('keterangan', 'keterangan');
        $this->crud->setShowView('attendance.show');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $user = Employee::where('email', '=', backpack_user()->email)->first();
        if (backpack_user()->role == "staff") {
            $this->crud->addClause('where', 'userid', '=', $user->userid);
        }
        $this->crud->removeButton('delete');

        $this->crud->addColumn([
            'name' => 'userid',
            'type' => 'select',
            'entity' => 'user',
            'attribute' => 'name',
            'model' => 'App\Models\Employee',
            'label' => 'Nama Karyawan'
        ]);

        $this->crud->addColumn([
            'name' => 'date',
            'type' => 'date',
            'label' => 'Tanggal'
        ]);

        $this->crud->addColumn([
            'name' => 'keterangan',
            'type' => 'text',
            'label' => 'Keterangan'
        ]);

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
        CRUD::setValidation(KeteranganRequest::class);

        $this->crud->removeSaveActions(['save_and_preview','save_and_edit','save_and_new']);

        if (backpack_user()->role == "admin" || backpack_user()->role == "hrd") {
            $this->crud->addField([
                'name' => 'userid',
                'label' => 'Karyawan',
                'type' => 'select2_from_array',
                'options' => Employee::pluck('name', 'userid'),
                'allows_null' => true,
            ]);
        } else {
            $this->crud->addField([
                'name'  => 'userid',
                'type'  => 'hidden',
                'label' => 'user',
                'value' => Employee::where('email', '=', backpack_user()->email)->first()->userid,
            ]);
        }


        $this->crud->addField([   // date_picker
            'name'  => 'date',
            'type'  => 'date_picker',
            'label' => 'Date',

            // optional:
            'date_picker_options' => [
               'todayBtn' => 'linked',
            ],
        ]);

        $this->crud->addField([  // Select2
            'label'     => "Keterangan",
            'type'      => 'select2_from_array',
            'name'      => 'keterangan', // the db column for the foreign key
            'options'   => ['Cuti' => 'Cuti', 'Tugas luar kantor' => 'Tugas luar kantor', 'Sakit' => 'Sakit', 'Izin' => 'Izin'],
            'allows_null' => true,
        ]);

        $this->crud->addField([
            'name' => 'keterangan_tambahan',
            'label' => 'Keterangan Tambahan',
            'type' => 'text'
        ]);

        if (backpack_user()->role == "admin" || backpack_user()->role == "hrd") {
            $this->crud->addField([  // Select2
                'label'     => "Status",
                'type'      => 'select2_from_array',
                'name'      => 'status', // the db column for the foreign key
                'options'   => ['Submit' => 'Submit', 'Decline' => 'Decline', 'Approve' => 'Approve'],
                'allows_null' => false,
            ]);
        } else {
            $this->crud->addField([  // Select2
                'label'     => "Status",
                'type'      => 'hidden',
                'name'      => 'status', // the db column for the foreign key
                'value'   => 'Submit',
            ]);
        }


        $this->crud->addField([   // Upload
            'name'      => 'upload_data',
            'label'     => 'Upload File',
            'type'      => 'upload',
            'hint'      => 'Format file yang didukung ; jpeg,bmp,png,svg,pdf,jpg',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
        ]);

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

    public function approve($id)
    {
        $keterangan = Keterangan::find($id);
        $keterangan->status = "Approve";
        $keterangan->update();

        \Alert::add('success', 'Berhasil menyetujui Keterangan')->flash();
        return redirect()->back();
    }

    public function decline($id)
    {
        $keterangan = Keterangan::find($id);
        $keterangan->status = "Decline";
        $keterangan->update();

        \Alert::add('success', 'Berhasil menolak Keterangan')->flash();
        return redirect()->back();
    }
}
