<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ReportMonthAbsenceRequest;
use App\Models\Checkinout;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

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
        $this->crud->setListView('absence.listMonth');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        // dd(Checkinout::selectRaw("count(distinct(date(checktime))) as attendance")->groupBy('userid')->get());
        $this->crud->removeButton('create');
        $this->crud->removeButton('update');
        $this->crud->removeButton('delete');
        $this->crud->removeButton('show');

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

        // $this->crud->addColumn([
        //     // 'name' => 'name', // The db column name
        //     'label' => "Kehadiran", // Table column heading
        //     'type' => 'Text',
        //     'value' => count(\App\Models\Checkinout::distinct(date('checktime'))->get())
        // ]);

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
}
