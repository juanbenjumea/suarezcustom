<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sec_user', function(Blueprint $table) {
            $table->engine = 'InnoDB';

            $table->increments('id');
            $table->string('email', 100)->unique();
            $table->string('password', 100);
            $table->string('name', 150)->nullable();
            $table->string('activation_code', 50)->nullable();

            $table->timestamps();
            $table->softDeletes();
        });
        
        Schema::create('sec_role', function(Blueprint $table) {
            $table->engine = 'InnoDB';

            $table->increments('id');
            $table->string('name', 20);

        });
        
        Schema::create('sec_user_role_list', function(Blueprint $table) {
            $table->engine = 'InnoDB';

            $table->integer('user_id')->unsigned();
            $table->integer('role_id')->unsigned();

            $table->foreign('user_id')
                    ->references('id')->on('sec_user');
            $table->foreign('role_id')
                    ->references('id')->on('sec_role');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('sec_user_role_list');
        Schema::drop('sec_role');
        Schema::drop('sec_user');
    }
}
