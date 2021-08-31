<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\AbsenLapanganRequest;
use App\Models\Employee;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class AbsenLapanganCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class AbsenLapanganCrudController extends CrudController
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
        CRUD::setModel(\App\Models\AbsenLapangan::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/absenlapangan');
        CRUD::setEntityNameStrings('Absen Lapangan', 'Absen Lapangan');
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
        $this->crud->addClause('where', 'keterangan', '=', 'Absen lapangan');
        if (backpack_user()->role == "staff") {
            $this->crud->addClause('where', 'userid', '=', backpack_user()->Employee->userid);
        }
        $this->crud->enableExportButtons();
        $this->crud->removeButton('create');
        $this->crud->removeButton('delete');
        $this->crud->removeButton('update');
        $this->crud->addColumn([
            'name' => 'userid',
            'type' => 'select',
            'entity' => 'user',
            'attribute' => 'name',
            'model' => 'App\Models\Employee',
            'label' => 'Nama Karyawan'
        ]);
        $this->crud->addColumn([
            'label'    => 'Departemen',
            'type'     => 'closure',
            'function' => function($entry) {
                $employee = Employee::where('email', '=', backpack_user()->email)->first();
                if (!empty($employee->department->DeptName)) {
                    return $employee->department->DeptName;
                } else {
                    return "-";
                }

            }
        ]);
        $this->crud->addColumn([
            'name' => 'created_at',
            'type' => 'datetime',
            'label'=> 'Tanggal/Waktu'
        ]);
        $this->crud->addColumn([
            'name' => 'keterangan_tambahan',
            'type' => 'text',
            'label'=> 'Keterangan'
        ]);
        $this->crud->addColumn([
            'name'     => 'keterangan',
            'label'    => 'Keterangan',
            'type'     => 'closure',
            'function' => function($entry) {
                return $entry->keterangan.' '.$entry->keterangan_tambahan;
            }
        ]);
        $this->crud->addColumn([
            'name' => 'tujuan',
            'type' => 'text',
            'label'=> 'Tujuan'
        ]);
        $this->crud->addColumn([
            'name' => 'hasil',
            'type' => 'textarea',
            'label'=> 'Hasil'
        ]);
        $this->crud->addColumn([
            'name'     => 'lat',
            'label'    => 'Location',
            'type'     => 'closure',
            'function' => function($entry) {
                return $entry->lat.','.$entry->lng;
            },
            'wrapper'   => [
                // 'element' => 'a', // the element will default to "a" so you can skip it here
                'href' => function ($crud, $column, $entry, $related_key) {
                    return "https://www.google.com/maps/?q=".$entry->lat.",".$entry->lng;
                },
                // 'target' => '_blank',
                // 'class' => 'some-class',
            ],
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
        CRUD::setValidation(AbsenLapanganRequest::class);

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
}
