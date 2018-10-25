<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <meta name="description" content="Описание сайта несколько предложений">
  <meta name="keywords" content="Ключевые слова">
  <meta name="author" content="Shandora">
  <title>Название сайта</title>
  <link rel="stylesheet" type="text/css" href="{{asset('media/bootstrap/css/bootstrap.min.css')}}"/>
  <link rel="stylesheet" type="text/css" href="{{asset('media/css/style.css')}}"/>
</head>
<body>
  <header id="header">
  	<h1 id="logotext">Название сайта</h1>
  	<img src="{{asset('media/img/logo.png')}}" id="logo">		
  </header>
  <nav class="topmenu">
  	<a href="index">Главная</a>
  	<a href="about">О компании</a>
  	<a href="services">Услуги</a>
  	<a href="#">Товары</a>
  	<a href="contakts">Контакты</a>
	@guest
                            
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>

                                @if (Route::has('register'))
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                @endif
                        @else

                                <a href="{{asset('home')}}">
                                    {{ Auth::user()->name }} 
                                </a>

                                
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                

                        @endguest
  </nav>

  	<div>
  		<div class="col-md-2">
  		<a href="#" class="btn btn-default btn-block">Разработка сайтов</a>
  		<a href="#" class="btn btn-success btn-block">Продвижение</a>
  		<a href="#" class="btn btn-primary btn-block">Обслуживание</a>
  		</div>
  		<div class="col-md-8">
		@yield ('content')
		</div>
  		<div class="col-md-2">
  		<!--pogoda.by-->
<!--Информер распространяется свободно и на безвозмездной основе. Однако, в случае изменения кода информера (в частности, удаления ссылок), POGODA.BY снимает с себя ответственность за конечный результат.-->

<table width="100%" height="180" style="background-color:#f2f2f2; border: #cccccc 1px solid; font-family:Tahoma; font-size:12px; color:#000000;" cellpadding="2" cellspacing="0">
<tr><td><a href="http://6.pogoda.by/26850" style="font-family:Tahoma; font-size:12px; color:#003399;" title="Погода Минск на 6 дней - Гидрометцентр РБ" target="_blank">Погода Минск</a>
</td></tr>
<tr><td>

<table width=100% height=100% style="background-color:#f2f2f2; font-family:Tahoma; font-size:12px; color:#000000;" cellpadding="0" cellspacing="0">
<tr><td>
<script type="text/javascript" charset="windows-1251" src="http://pogoda.by/meteoinformer/js/26850_1.js"></script>
</td></tr>
</table>

</td></tr>

<tr><td align="right">Информация сайта <a href="http://www.pogoda.by" target="_blank" style="font-family:Tahoma; font-size:12px; color:#003399;">pogoda.by</a>
</td></tr>
</table>
  		</div>
  	</div>
  	<br style="clear:both;">
<div class="footer">
	&copy maryen@mail.ru
</div>
  
</body>
</html>