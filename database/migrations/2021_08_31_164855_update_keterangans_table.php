<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateKeterangansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('keterangan', function (Blueprint $table) {
            $table->string('tujuan')->nullable();
            $table->text('hasil')->nullable();
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
                'tujuan',
                'hasil',
            ]);
        });
    }
}
