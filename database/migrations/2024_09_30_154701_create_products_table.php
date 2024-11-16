<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('showProduct')->comment('1')->default(1);
            $table->string('productBy')->comment('0')->nullable();
            $table->string('category')->comment('none')->nullable();
            $table->string('title')->nullable();
            $table->longText('description')->nullable();
            // $table->string('image')->default('https://store-in.puma.com/VendorpageTheme/Enterprise/EThemeForPuma/images/product-not-found.jpg')->nullable();
            $table->string('images')->nullable();
            $table->string('dailyrate')->nullable();
            $table->string('weeklyrate')->nullable();
            $table->string('monthlyrate')->nullable();
            $table->string('availabilityDays')->nullable();
            $table->string('pickupDateRange')->nullable();
            $table->boolean('allowReviews')->nullable()->default(1);
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
        Schema::dropIfExists('products');
    }
}