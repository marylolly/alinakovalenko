<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Order;
use Auth;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

		Order::created(function($obj){
			if (isset($obj->email)){
				$user_email=$obj->email;
				$name=$obj->fio;
			}
			elseif(Auth::user()){
				$user_email=Auth::user()->email;
				$name=Auth::user()->fio;
			}
		$theme="Уважаемый $name, Вам сообщение с сайта";
		$body='<h1>С вашего аккаунта был совершен заказ на сайте.</h1>';
		$header='MIME-Version: 1.0'."\r\n";
		$header='Content-type: text/html; charset=UTF-8'."\r\n";
		$header='From:'. env('MAIL_FROM_ADDRESS')."\r\n";
		
		$theme_admin="Уважаемый $name, Вам сообщение с сайта";
		$body_admin='<h1>На вашем сайте совершен заказ.</h1>';
		
		@mail($user_email,$theme,$body,$header);
		@mail(env('MAIL_FROM_ADDRESS'),$theme_admin,$body_admin,$header);
		});
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
