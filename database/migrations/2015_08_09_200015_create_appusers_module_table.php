<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAppUsersModuleTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('app_users', function(Blueprint $table)
		{
			$table->increments('id');
            $table->string('username');
            $table->string('password');
            $table->string('email');
            $table->string('affiliate_code');
            $table->string('custom');
            $table->boolean('is_vip');
            $table->string('phone_1');
            $table->string('phone_2');
            $table->string('referral_code');
            $table->boolean('is_approved');
            $table->boolean('registration_complete');
            $table->boolean('is_blocked');
            $table->boolean('terms_of_service_accepted');
            $table->timestamps();
            $table->softDeletes();
		});
//
//		Schema::create('blogs', function(Blueprint $table)
//		{
//			$table->increments('id');
//			$table->unsignedInteger('blog_category_id');
//			$table->unsignedInteger('user_id');
//			$table->string('title');
//			$table->text('content');
//			$table->string('image')->nullable();
//			$table->integer('views')->default(0);
//			$table->timestamps();
//			$table->softDeletes();
//		});
//
//		Schema::create('blog_comments', function(Blueprint $table)
//		{
//			$table->increments('id');
//			$table->unsignedInteger('blog_id');
//			$table->string('name');
//			$table->string('email');
//			$table->string('website')->nullable();
//			$table->text('comment');
//			$table->timestamps();
//			$table->softDeletes();
//		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		//take backup before dropping table
//		$table = 'blog_comments';
//		Storage::disk('local')->put($table.'_'.date('Y-m-d_H-i-s').'.bak', json_encode(DB::table($table)->get()));
//		Schema::drop('blog_comments');
//
//		$table = 'blogs';
//		Storage::disk('local')->put($table.'_'.date('Y-m-d_H-i-s').'.bak', json_encode(DB::table($table)->get()));
//		Schema::drop('blogs');

		$table = 'app_users';
		Storage::disk('local')->put($table.'_'.date('Y-m-d_H-i-s').'.bak', json_encode(DB::table($table)->get()));
		Schema::drop('app_users');
	}

}
