<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Orders', function (Blueprint $table) {
            $table->increments('id');
            $table->boolean('deliverd')->default('0');
            $table->boolean('isRejected')->default('0');
            $table->string('orderbyuid')->default('0');
            $table->string('userCanPickupRange')->default('0');
            
            // $table->string('userPhone')->nullable();
            // $table->string('UserAddress')->nullable();
            $table->integer('product_by')->default('0');
            $table->integer('productId')->default('0');
            $table->string('productTitle')->default('0');
            $table->string('productImage')->default('0');
            $table->string('dailyrate')->default('0');
            $table->string('weeklyrate')->default('0');
            $table->string('monthlyrate')->default('0');
            $table->string('availability')->default('0');
            $table->string('productPickupDate')->default('0');

            $table->ipAddress('ipAddress')->default('0');
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
        Schema::dropIfExists('Orders');
    }
}