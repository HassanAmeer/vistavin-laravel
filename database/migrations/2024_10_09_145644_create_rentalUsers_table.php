<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentalUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rentalUsers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('image')->nullable();
            $table->string('name')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('address')->nullable();
            $table->string('aboutUs')->nullable();
            $table->string('verifiedBy')->default('google')->nullable();
            $table->boolean('activeUser')->default('1')->nullable();
            $table->boolean('sendEmail')->default('1')->nullable();
            $table->boolean('password')->default('1234')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rentalUsers');
    }
}
