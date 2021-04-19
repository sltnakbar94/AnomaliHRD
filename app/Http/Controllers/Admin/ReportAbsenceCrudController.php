<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ReportAbsenceRequest;
use App\Models\Checkinout;
use App\Models\Department;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class ReportAbsenceCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class ReportAbsenceCrudController extends CrudController
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
        CRUD::setModel(\App\Models\ReportAbsence::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/reportabsence');
        CRUD::setEntityNameStrings('Absensi Harian', 'Absensi Harian');
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
        $this->crud->removeButton('show');
        $this->crud->enableDetailsRow();
        $this->crud->allowAccess('month.detailket');
        $this->crud->setDetailsRowView('month.detailket');

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
            'label'     => 'Departemen', // Table column heading
            'type'      => 'select',
            'name'      => 'defaultdeptid', // the column that contains the ID of that connected entity;
            'entity'    => 'department', // the method that defines the relationship in your Model
            'attribute' => 'DeptName', // foreign key attribute that is shown to user
            'model'     => "App\Models\Department", // foreign key model
        ]);

        $this->crud->addColumn([
            'label'     => 'Tanggal', // Table column heading
            'type'      => 'select',
            // 'name'      => 'userid', // the column that contains the ID of that connected entity;
            'entity'    => 'date', // the method that defines the relationship in your Model
            'attribute' => 'checktime', // foreign key attribute that is shown to user
            'model'     => "App\Models\Checkinout", // foreign key model
        ]);

        $this->crud->addColumn([
            'label'     => 'Jam Masuk', // Table column heading
            'type'      => 'select',
            // 'name'      => 'userid', // the column that contains the ID of that connected entity;
            'entity'    => 'CheckIn', // the method that defines the relationship in your Model
            'attribute' => 'checktime', // foreign key attribute that is shown to user
            'model'     => "App\Models\CheckIn", // foreign key model
        ]);

        $this->crud->addColumn([
            'label'     => 'Jam Keluar', // Table column heading
            'type'      => 'select',
            // 'name'      => 'userid', // the column that contains the ID of that connected entity;
            'entity'    => 'CheckOut', // the method that defines the relationship in your Model
            'attribute' => 'checktime', // foreign key attribute that is shown to user
            'model'     => "App\Models\CheckOut",
        ]);

        $this->crud->addColumn([
            'name'     => 'userid',
            'label'    => 'Jam Kerja',
            'type'     => 'closure',
            'function' => function($entry) {
                if (!empty($entry->CheckIn->checktime)) {
                    $t1 = \Carbon\Carbon::parse($entry->CheckIn->checktime);
                    $t2 = \Carbon\Carbon::parse($entry->CheckOut->checktime);
                    $time = $t1->diffInMinutes($t2);
                    return floor($time/60) . " Jam " . (($time/60)-floor($time/60))*60 . " Menit";
                } else {
                    return "-";

                }
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
        CRUD::setValidation(ReportAbsenceRequest::class);

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
