<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateKeteranganTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('keterangan', function (Blueprint $table) {
            $table->string('keterangan_tambahan');
            $table->string('status')->nullable();
            $table->string('upload_data')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('keternagan', function (Blueprint $table) {
            $table->dropColumn([
                'keterangan_tambahan',
                'status',
                'upload_data',
            ]);
        });
    }
}
