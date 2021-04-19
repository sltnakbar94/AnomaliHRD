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
        // simple filter
        $this->crud->addFilter([
            'type'  => 'simple',
            'name'  => 'active',
            'label' => 'Active'
        ],
        false,
        function() { // if the filter is active
            $this->crud->addClause('active'); // apply the "active" eloquent scope
        } );
        $this->crud->removeButton('delete');

        $this->crud->addColumn([
            'name'      => 'row_number',
            'type'      => 'row_number',
            'label'     => 'Nomor',
            'orderable' => false,
        ])->makeFirstColumn();

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'name',
            'label'          => 'Nama',
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'employee_num',
            'label'          => 'NIK',
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
            'label'     => 'Jabatan', // Table column heading
            'type'      => 'select',
            'name'      => 'position_id', // the column that contains the ID of that connected entity;
            'entity'    => 'jabatan', // the method that defines the relationship in your Model
            'attribute' => 'name', // foreign key attribute that is shown to user
            'model'     => "App\Models\Position", // foreign key model
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'place_of_birth',
            'label'          => 'Tempat Lahir',
        ]);

        $this->crud->addColumn([
            'type'           => 'date',
            'name'           => 'date_of_birth',
            'label'          => 'Tanggal Lahir',
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'degree',
            'label'          => 'Tingkat Pendidikan',
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'vocational',
            'label'          => 'Kejuruan Pendidikan',
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'university',
            'label'          => 'Sekolah/Universitas',
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'university',
            'label'          => 'Sekolah/Universitas',
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'work_status',
            'label'          => 'Status Kerja',
        ]);

        $this->crud->addColumn([
            'type'           => 'date',
            'name'           => 'date_of_join',
            'label'          => 'Tanggal Join',
        ]);

        $this->crud->addColumn([
            'type'           => 'date',
            'name'           => 'date_of_permanent',
            'label'          => 'Tanggal Tetap',
        ]);

        $this->crud->addColumn([
            'type'           => 'number',
            'name'           => 'time_service',
            'label'          => 'Waktu',
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'unit_time_service',
            'label'          => 'Masa Kerja',
        ]);

        $this->crud->addColumn([
            'type'           => 'textarea',
            'name'           => 'address_id',
            'label'          => 'Alamat Sesuai KTP',
        ]);

        $this->crud->addColumn([
            'type'           => 'textarea',
            'name'           => 'address',
            'label'          => 'Alamat Domisili',
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'id_number',
            'label'          => 'Nomor KTP',
        ]);

        // $this->crud->addColumn([
        //     'type'           => 'upload_multiple',
        //     'name'           => 'ktp',
        //     'label'          => 'KTP',
        // ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'no_npwp',
            'label'          => 'Nomor NPWP',
        ]);

        // $this->crud->addColumn([
        //     'type'           => 'upload_multiple',
        //     'name'           => 'npwp',
        //     'label'          => 'NPWP',
        // ]);

        $this->crud->addColumn([
            'type'           => 'email',
            'name'           => 'emial',
            'label'          => 'Alamat Email',
        ]);

        $this->crud->addColumn([
            'type'           => 'phone',
            'name'           => 'contact_number',
            'label'          => 'No Telp',
        ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'bpjs_kesehatan',
            'label'          => 'Nomor BPJS Kesehatan',
        ]);

        // $this->crud->addColumn([
        //     'type'           => 'upload_multiple',
        //     'name'           => 'kesehatan',
        //     'label'          => 'BPJS Kesehatan',
        // ]);

        $this->crud->addColumn([
            'type'           => 'text',
            'name'           => 'bpjs_ketenagakerjaan',
            'label'          => 'Nomor BPJS Ketenagakerjaan',
        ]);

        // $this->crud->addColumn([
        //     'type'           => 'upload_multiple',
        //     'name'           => 'ketenagakerjaan',
        //     'label'          => 'PBJS Ketenagakerjaan',
        // ]);

        $this->crud->addColumn([
            'name'        => 'active',
            'label'       => 'Status',
            'type'        => 'radio',
            'options'     => [
                0 => 'Tidak Aktif',
                1 => 'Aktif'
            ]
        ]);

        $this->crud->enableExportButtons();

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
            'name'  => "badgenumber",
            'type'  => 'hidden',
            'value' => $this->badgenumber(),
        ]);

        $this->crud->addField([
            'label' => "Nama",
            'name'  => "name",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'label' => "NIK",
            'name'  => "employee_num",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'name' => 'defaultdeptid',
            'label' => 'Departemen',
            'type' => 'select2_from_array',
            'options' => Department::pluck('DeptName', 'DeptID'),
            'allows_null' => true,
        ]);

        $this->crud->addField([
            'name' => 'position_id',
            'label' => 'Jabatan',
            'type' => 'select2_from_array',
            'options' => Position::pluck('name', 'id'),
            'allows_null' => true,
        ]);

        $this->crud->addField([
            'label' => "Tempat Lahir",
            'name'  => "place_of_birth",
            'type'  => 'text',
        ]);

        $this->crud->addField([   // date_picker
            'name'  => 'date_of_birth',
            'type'  => 'date_picker',
            'label' => 'Tanggal Lahir',

            // optional:
            // 'date_picker_options' => [
            //    'todayBtn' => 'linked',
            //    'format'   => 'dd-mm-yyyy',
            // ],
        ]);

        $this->crud->addField([
            'label' => "Tingkat Pendidikan",
            'name'  => "degree",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'label' => "Kejuruan Pendidikan",
            'name'  => "vocational",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'label' => "Nama Sekolah/Universitas",
            'name'  => "university",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'name' => 'work_status',
            'label' => 'Status',
            'type' => 'select2_from_array',
            'options' => ['Tetap' => 'Tetap', 'Kontrak' => 'Kontrak', 'Magang' => 'Magang'],
            'allows_null' => false,
        ]);

        $this->crud->addField([   // date_picker
            'name'  => 'date_of_join',
            'type'  => 'date_picker',
            'label' => 'Tanggal Join',

            // optional:
            'date_picker_options' => [
               'todayBtn' => 'linked',
               'format'   => 'dd-mm-yyyy',
            ],
        ]);

        $this->crud->addField([   // date_picker
            'name'  => 'date_of_permanent',
            'type'  => 'date_picker',
            'label' => 'Tanggal Tetap',

            // optional:
            'date_picker_options' => [
               'todayBtn' => 'linked',
               'format'   => 'dd-mm-yyyy',
            ],
        ]);

        $this->crud->addField([
            'label' => "Waktu Masa Kerja",
            'name'  => "time_service",
            'type'  => 'number',
        ]);

        $this->crud->addField([
            'name' => 'unit_time_service',
            'label' => 'Satuan Masa Kerja',
            'type' => 'select2_from_array',
            'options' => ['Bulan' => 'Bulan', 'Tahun' => 'Tahun'],
            'allows_null' => false,
        ]);

        $this->crud->addField([
            'label' => "Alamat Sesuai KTP",
            'name'  => "address_id",
            'type'  => 'textarea',
        ]);

        $this->crud->addField([
            'label' => "Alamat Domisili",
            'name'  => "address",
            'type'  => 'textarea',
        ]);

        if (backpack_user()->role == 'hrd') {
            $this->crud->addField([
                'name' => 'Privilege',
                'type' => 'hidden',
                'value' => 0,
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

        $this->crud->addField([   // Upload
            'name'      => 'cv',
            'label'     => 'CV',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
            'temporary' => 10 // if using a service, such as S3, that requires you to make temporary URLs this will make a URL that is valid for the number of minutes specified
        ]);

        $this->crud->addField([
            'label' => "No Idenstitas",
            'name'  => "id_number",
            'type'  => 'text',
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

        $this->crud->addField([
            'label' => "No NPWP",
            'name'  => "no_npwp",
            'type'  => 'text',
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
            'label' => "Alamat Email",
            'name'  => "email",
            'type'  => 'email',
        ]);

        $this->crud->addField([
            'label' => "No Telpon",
            'name'  => "contact_number",
            'type'  => 'text',
        ]);

        if (backpack_user()->role == 'hrd' || backpack_user()->role == 'admin') {
            $this->crud->addField([
                'name' => 'bpjs_kesehatan',
                'type' => 'text',
                'label' => 'BPJS Kesehatan',
            ]);

            $this->crud->addField([   // Upload
                'name'      => 'kesehatan',
                'label'     => 'Kartu BPJS Kesehatan',
                'type'      => 'upload',
                'upload'    => true,
                'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
                'temporary' => 10 // if using a service, such as S3, that requires you to make temporary URLs this will make a URL that is valid for the number of minutes specified
            ]);

            $this->crud->addField([
                'name' => 'bpjs_ketenagakerjaan',
                'type' => 'text',
                'label' => 'BPJS Ketenagakerjaan',
            ]);

            $this->crud->addField([   // Upload
                'name'      => 'ketenagakerjaan',
                'label'     => 'Kartu BPJS Ketenagakerjaan',
                'type'      => 'upload',
                'upload'    => true,
                'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
                'temporary' => 10 // if using a service, such as S3, that requires you to make temporary URLs this will make a URL that is valid for the number of minutes specified
            ]);
        }

        $this->crud->addField([   // Upload
            'name'      => 'sertifikasi',
            'label'     => 'Berkas Sertifikasi',
            'type'      => 'upload_multiple',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
            'temporary' => 10 // if using a service, such as S3, that requires you to make temporary URLs this will make a URL that is valid for the number of minutes specified
        ]);

        $this->crud->addField([   // radio
            'name'        => 'active', // the name of the db column
            'label'       => 'Status', // the input label
            'type'        => 'radio',
            'options'     => [
                // the key will be stored in the db, the value will be shown as label;
                0 => "Tidak Aktif",
                1 => "Aktif"
            ],
            // optional
            'inline'      => true, // show the radios all on the same line?
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
            'name'  => "Privilege",
            'type'  => 'hidden',
        ]);

        $this->crud->addField([
            'label' => "Nama",
            'name'  => "name",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'label' => "NIK",
            'name'  => "employee_num",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'name' => 'defaultdeptid',
            'label' => 'Departemen',
            'type' => 'select2_from_array',
            'options' => Department::pluck('DeptName', 'DeptID'),
            'allows_null' => true,
        ]);

        $this->crud->addField([
            'name' => 'position_id',
            'label' => 'Jabatan',
            'type' => 'select2_from_array',
            'options' => Position::pluck('name', 'id'),
            'allows_null' => true,
        ]);

        $this->crud->addField([
            'label' => "Tempat Lahir",
            'name'  => "place_of_birth",
            'type'  => 'text',
        ]);

        $this->crud->addField([   // date_picker
            'name'  => 'date_of_birth',
            'type'  => 'date_picker',
            'label' => 'Tanggal Lahir',

            // optional:
            // 'date_picker_options' => [
            //    'todayBtn' => 'linked',
            //    'format'   => 'dd-mm-yyyy',
            // ],
        ]);

        $this->crud->addField([
            'label' => "Tingkat Pendidikan",
            'name'  => "degree",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'label' => "Kejuruan Pendidikan",
            'name'  => "vocational",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'label' => "Nama Sekolah/Universitas",
            'name'  => "university",
            'type'  => 'text',
        ]);

        $this->crud->addField([
            'name' => 'work_status',
            'label' => 'Status',
            'type' => 'select2_from_array',
            'options' => ['Tetap' => 'Tetap', 'Kontrak' => 'Kontrak', 'Magang' => 'Magang'],
            'allows_null' => true,
        ]);

        $this->crud->addField([   // date_picker
            'name'  => 'date_of_join',
            'type'  => 'date_picker',
            'label' => 'Tanggal Join',

            // optional:
            'date_picker_options' => [
               'todayBtn' => 'linked',
               'format'   => 'dd-mm-yyyy',
            ],
        ]);

        $this->crud->addField([   // date_picker
            'name'  => 'date_of_permanent',
            'type'  => 'date_picker',
            'label' => 'Tanggal Tetap',

            // optional:
            'date_picker_options' => [
               'todayBtn' => 'linked',
               'format'   => 'dd-mm-yyyy',
            ],
        ]);

        $this->crud->addField([
            'label' => "Waktu Masa Kerja",
            'name'  => "time_service",
            'type'  => 'number',
        ]);

        $this->crud->addField([
            'name' => 'unit_time_service',
            'label' => 'Satuan Masa Kerja',
            'type' => 'select2_from_array',
            'options' => ['Bulan' => 'Bulan', 'Tahun' => 'Tahun'],
            'allows_null' => true,
        ]);

        $this->crud->addField([
            'label' => "Alamat Sesuai KTP",
            'name'  => "address_id",
            'type'  => 'textarea',
        ]);

        $this->crud->addField([
            'label' => "Alamat Domisili",
            'name'  => "address",
            'type'  => 'textarea',
        ]);

        $this->crud->addField([
            'name' => 'SN',
            'type' => 'hidden',
        ]);

        $this->crud->addField([   // Upload
            'name'      => 'cv',
            'label'     => 'CV',
            'type'      => 'upload',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
        ]);

        $this->crud->addField([
            'label' => "No Idenstitas",
            'name'  => "id_number",
            'type'  => 'text',
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

        $this->crud->addField([
            'label' => "No NPWP",
            'name'  => "no_npwp",
            'type'  => 'text',
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
            'label' => "Alamat Email",
            'name'  => "email",
            'type'  => 'email',
        ]);

        $this->crud->addField([
            'label' => "No Telpon",
            'name'  => "contact_number",
            'type'  => 'text',
        ]);

        if (backpack_user()->role == 'hrd' || backpack_user()->role == 'admin') {
            $this->crud->addField([
                'name' => 'bpjs_kesehatan',
                'type' => 'text',
                'label' => 'BPJS Kesehatan',
            ]);

            $this->crud->addField([   // Upload
                'name'      => 'kesehatan',
                'label'     => 'Kartu BPJS Kesehatan',
                'type'      => 'upload',
                'upload'    => true,
                'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
            ]);

            $this->crud->addField([
                'name' => 'bpjs_ketenagakerjaan',
                'type' => 'text',
                'label' => 'BPJS Ketenagakerjaan',
            ]);

            $this->crud->addField([   // Upload
                'name'      => 'ketenagakerjaan',
                'label'     => 'Kartu BPJS Ketenagakerjaan',
                'type'      => 'upload',
                'upload'    => true,
                'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
            ]);
        }

        $this->crud->addField([   // Upload
            'name'      => 'sertifikasi',
            'label'     => 'Berkas Sertifikasi',
            'type'      => 'upload_multiple',
            'upload'    => true,
            'disk'      => 'public', // if you store files in the /public folder, please omit this; if you store them in /storage or S3, please specify it;
        ]);

        $this->crud->addField([   // radio
            'name'        => 'active', // the name of the db column
            'label'       => 'Status', // the input label
            'type'        => 'radio',
            'options'     => [
                // the key will be stored in the db, the value will be shown as label;
                0 => "Tidak Aktif",
                1 => "Aktif"
            ],
            // optional
            'inline'      => true, // show the radios all on the same line?
        ]);
    }
}
