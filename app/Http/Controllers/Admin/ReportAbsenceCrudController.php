<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ReportAbsenceRequest;
use App\Models\Checkinout;
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
        CRUD::setEntityNameStrings('reportabsence', 'report_absences');
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
        $this->crud->query->join('checkinout', 'checkinout.userid', '=', 'userinfo.userid')->distinct('userinfo.userid')->whereDate('checktime', today());
        $this->crud->addClause('whereDate', 'checktime', today());


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
            'name' => 'checktime', // The db column name
            'label' => "Tanggal", // Table column heading
            'type' => 'date'
        ]);

        $this->crud->addColumn([
            'name' => 'checktime', // The db column name
            'label' => "Tanggal", // Table column heading
            'type' => 'date'
        ]);

        $this->crud->addColumn([
            'label'     => 'Jam Masuk', // Table column heading
            'type'      => 'select',
            'name'      => 'userinfo.userid', // the column that contains the ID of that connected entity;
            'entity'    => 'CheckIn', // the method that defines the relationship in your Model
            'attribute' => 'checktime', // foreign key attribute that is shown to user
            'model'     => "App\Models\Checkinout", // foreign key model
        ]);

        // $this->crud->addColumn([
        //     'label'     => 'Jam Keluar', // Table column heading
        //     'type'      => 'select',
        //     'name'      => 'userinfo.userid', // the column that contains the ID of that connected entity;
        //     'entity'    => 'CheckOut', // the method that defines the relationship in your Model
        //     'attribute' => 'checktime', // foreign key attribute that is shown to user
        //     'model'     => "App\Models\Checkinout",
        // ]);

        $this->crud->enableExportButtons();
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
