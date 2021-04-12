<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\EmployeeRequest;
use App\Models\Department;
use App\Models\Device;
use App\Models\Employee;
use App\Models\Position;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class EmployeeCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class EmployeeCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Employee::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/employee');
        CRUD::setEntityNameStrings('Karyawan', 'Karyawan');
        $this->crud->setShowView('employee.show');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->removeButton('delete');

        $this->crud->addColumn([
            'label'     => 'Departemen', // Table column heading
            'type'      => 'select',
            'name'      => 'defaultdeptid', // the column that contains the ID of that connected entity;
            'entity'    => 'department', // the method that defines the relationship in your Model
            'attribute' => 'DeptName', // foreign key attribute that is shown to user
            'model'     => "App\Models\Department", // foreign key model
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'badgenumber',
            'label'          => 'Badgenumber',
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'name',
            'label'          => 'Nama',
        ]);

        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']);
         */
    }

    public function badgenumber()
    {
        $count = Employee::orderBy('badgenumber', 'desc')->first();
        $generate = $count->badgenumber;
        $generate += 1;

        return str_pad($generate,9,'0',STR_PAD_LEFT);
    }

    /**
     * Define what happens when the Create operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(EmployeeRequest::class);

        $this->crud->addField([
            'label' => "Badgenumber",
            'name'  => "badgenumber",
            'type'  => 'text',
            'value' => $this->badgenumber(),
            'attributes' => [
                'readonly'    => 'readonly',
            ]
        ]);

        $this->crud->addField([
            'name' => 'defaultdeptid',
            'label' => 'Departemen',
            'type' => 'select2_from_array',
            'options' => Department::pluck('DeptName', 'DeptID'),
            'allows_null' => true,
        ]);

        $this->crud->addField([
            'label' => "Nama",
            'name'  => "name",
            'type'  => 'text',
        ]);

        if (backpack_user()->role == 'hrd') {
            $this->crud->addField([
                'name' => 'Privilege',
                'label' => 'Role',
                'type' => 'select2_from_array',
                'options' => ['0' => 'Normal'],
                'allows_null' => false,
            ]);
        } else {
            $this->crud->addField([
                'name' => 'Privilege',
                'label' => 'Role',
                'type' => 'select2_from_array',
                'options' => ['0' => 'Normal', '1' => 'Register', '2' => 'Administrator', '3' => 'Supervisor'],
                'allows_null' => false,
            ]);
        }


        $this->crud->addField([
            'name' => 'SN',
            'label' => 'Registrasi Perangkat',
            'hint' => 'Pilih perangkat pendaftaran sidik jari pegawai',
            'type' => 'select2_from_array',
            'options' => Device::pluck('Alias', 'SN'),
            'allows_null' => true,
        ]);

        $this->crud->addField([
            'name' => 'position_id',
            'label' => 'Jabatan',
            'type' => 'select2_from_array',
            'options' => Position::pluck('name', 'id'),
            'allows_null' => true,
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'cv',
            'label'     => 'CV',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
            'temporary' => 10 // if using a service, such as S3, that requires you to make temporary URLs this will make a URL that is valid for the number of minutes specified
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'ktp',
            'label'     => 'Kartu Tanda Penduduk',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
            'temporary' => 10 // if using a service, such as S3, that requires you to make temporary URLs this will make a URL that is valid for the number of minutes specified
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'ijazah',
            'label'     => 'Ijazah',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
            'temporary' => 10 // if using a service, such as S3, that requires you to make temporary URLs this will make a URL that is valid for the number of minutes specified
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'kk',
            'label'     => 'Kartu Keluarga',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
            'temporary' => 10 // if using a service, such as S3, that requires you to make temporary URLs this will make a URL that is valid for the number of minutes specified
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'npwp',
            'label'     => 'Nomor Pokok Wajib Pajak',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
            'temporary' => 10 // if using a service, such as S3, that requires you to make temporary URLs this will make a URL that is valid for the number of minutes specified
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'submission_form',
            'label'     => 'Form Aplikasi Calon Karyawan',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
            'temporary' => 10 // if using a service, such as S3, that requires you to make temporary URLs this will make a URL that is valid for the number of minutes specified
        ]);

        $this->crud->addField([
            'name'  => "DelTag",
            'type'  => 'hidden',
            'value' => '0',
        ]);

        $this->crud->addField([
            'name'  => "RegisterOT",
            'type'  => 'hidden',
            'value' => '1',
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
        CRUD::setValidation(EmployeeRequest::class);

        $this->crud->addField([
            'label' => "Badgenumber",
            'name'  => "badgenumber",
            'type'  => 'text',
            'attributes' => [
                'readonly'    => 'readonly',
            ]
        ]);

        $this->crud->addField([
            'name' => 'defaultdeptid',
            'label' => 'Departemen',
            'type' => 'select2_from_array',
            'options' => Department::pluck('DeptName', 'DeptID'),
            'allows_null' => true,
        ]);

        $this->crud->addField([
            'label' => "Nama",
            'name'  => "name",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'name' => 'Privilege',
            'label' => 'Role',
            'type' => 'select2_from_array',
            'options' => ['0' => 'Normal', '1' => 'Register', '2' => 'Administrator', '3' => 'Supervisor'],
            'allows_null' => false,
        ]);

        $this->crud->addField([
            'name' => 'SN',
            'label' => 'Registrasi Perangkat',
            'hint' => 'Pilih perangkat pendaftaran sidik jari pegawai',
            'type' => 'select2_from_array',
            'options' => Device::pluck('Alias', 'SN'),
            'allows_null' => true,
        ]);

        $this->crud->addField([
            'name' => 'position_id',
            'label' => 'Jabatan',
            'type' => 'select2_from_array',
            'options' => Position::pluck('name', 'id'),
            'allows_null' => true,
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'cv',
            'label'     => 'CV',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'ktp',
            'label'     => 'Kartu Tanda Penduduk',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'ijazah',
            'label'     => 'Ijazah',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'kk',
            'label'     => 'Kartu Keluarga',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'npwp',
            'label'     => 'Nomor Pokok Wajib Pajak',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'submission_form',
            'label'     => 'Form Aplikasi Calon Karyawan',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
        ]);

        $this->crud->addField([
            'name'  => "DelTag",
            'type'  => 'hidden',
            'value' => '0',
        ]);

        $this->crud->addField([
            'name'  => "RegisterOT",
            'type'  => 'hidden',
            'value' => '1',
        ]);
    }
}
