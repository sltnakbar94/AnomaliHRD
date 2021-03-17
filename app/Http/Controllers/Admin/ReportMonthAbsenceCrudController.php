<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ReportMonthAbsenceRequest;
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
        CRUD::setEntityNameStrings('reportmonthabsence', 'Report Absen Bulanan');
        // $this->crud->setListView('absence.absence');
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
        $this->crud->query->join('userinfo', 'userinfo.userid', '=', 'checkinout.userid');
        // $this->crud->groupBy(date('checktime'));

        $this->crud->addColumn([
            'label'     => 'Nomor', // Table column heading
            'type'      => 'text',
            'name'      => 'badgenumber', // the column that contains the ID of that connected entity;
        ]);

        $this->crud->addColumn([
            'label'     => 'Nama', // Table column heading
            'type'      => 'text',
            'name'      => 'name', // the column that contains the ID of that connected entity;
        ]);

        $this->crud->addColumn([
            'label'     => 'Tanggal', // Table column heading
            'type'      => 'date',
            'name'      => 'checktime', // the column that contains the ID of that connected entity;
        ]);

        $this->crud->addColumn([
            'label'     => 'Tanggal', // Table column heading
            'type'      => 'date',
            'name'      => 'checktime', // the column that contains the ID of that connected entity;
        ]);

        $this->crud->addColumn([
            'label'     => 'Tanggal', // Table column heading
            'type'      => 'date',
            'name'      => 'checktime', // the column that contains the ID of that connected entity;
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
