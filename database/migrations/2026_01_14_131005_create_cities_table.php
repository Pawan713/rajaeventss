<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cities', function (Blueprint $table) {
        $table->id();
        // $table->foreignId('state_id')
        //       ->constrained('states') // References 'id' on 'states' table
        //       ->onDelete('cascade');
        $table->unsignedBigInteger('state_id'); // Link to your states table
        $table->string('name');
        $table->boolean('status')->default(1); // Matches your SQL: where status = 1
        $table->timestamps();

        // Optional: Add foreign key if states table exists
        //$table->foreign('state_id')->references('id')->on('states')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cities');
    }
}
