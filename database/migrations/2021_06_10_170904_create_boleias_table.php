<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBoleiasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('boleias', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string ('origem')->required();
            $table->string ('destino')->required();;
            $table->string ('paragens')->nullable();
            $table->integer ('lugares')->required();;
            $table->string ('idiomas')->nullable();
            $table->double ('preco',8,2)->nullable();
            $table->string ('carro')->required();
            $table->integer ('user_id')->nullable();
            $table->date('date')->nullable();
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
        Schema::dropIfExists('boleias');
    }
}
