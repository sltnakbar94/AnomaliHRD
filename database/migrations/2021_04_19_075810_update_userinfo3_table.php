<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateUserinfo3Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('userinfo', function (Blueprint $table) {
            $table->string('employee_num')->nullable();
            $table->string('place_of_birth')->nullable();
            $table->date('date_of_birth')->nullable();
            $table->string('degree')->nullable();
            $table->string('vocational')->nullable();
            $table->string('university')->nullable();
            $table->string('work_status')->nullable();
            $table->date('date_of_join')->nullable();
            $table->date('date_of_permanent')->nullable();
            $table->integer('time_service')->nullable();
            $table->string('unit_time_service')->nullable();
            $table->text('address_id')->nullable();
            $table->text('address')->nullable();
            $table->string('id_number')->nullable();
            $table->string('no_npwp')->nullable();
            $table->string('email')->nullable()->unique();
            $table->string('contact_number')->nullable();
            $table->string('bpjs_kesehatan')->nullable();
            $table->string('kesehatan')->nullable();
            $table->string('bpjs_ketenagakerjaan')->nullable();
            $table->string('ketenagakerjaan')->nullable();
            $table->text('sertifikasi')->nullable();
            $table->boolean('active')->nullable()->default(true);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('userinfo', function (Blueprint $table) {
            $table->dropColumn([
                'employee_num',
                'place_of_birth',
                'date_of_birth',
                'degree',
                'vocational',
                'university',
                'work_status',
                'date_of_join',
                'date_of_permanent',
                'time_service',
                'unit_time_service',
                'address_id',
                'address',
                'id_number',
                'no_npwp',
                'email',
                'contact_number',
                'bpjs_kesehatan',
                'kesehatan',
                'bpjs_ketenagakerjaan',
                'ketenagakerjaan',
                'sertifikasi',
                'active',
            ]);
        });
    }
}
