<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddExtraColumnsToEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('employees', function (Blueprint $table) {
        $table->string('aadhar_no', 12)->nullable()->after('phone'); // Adjusted for 12 digits
        $table->text('description')->nullable()->after('aadhar_no');
        $table->string('state')->nullable()->after('description');
        $table->string('city')->nullable()->after('state');
        $table->boolean('status')->default(1)->after('city'); // 1 for Active, 0 for Inactive
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('employees', function (Blueprint $table) {
        $table->dropColumn(['aadhar_no', 'description', 'state', 'city', 'status']);
         });
    }
}
