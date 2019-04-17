<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <meta name="description" content="Описание сайта несколько предложений">
  <meta name="keywords" content="Ключевые слова">
  <meta name="author" content="Shandora">
  <title>Дивная Турция - главная страница</title>
  <link rel="stylesheet" type="text/css" href="{{asset('media/bootstrap/css/bootstrap.min.css')}}"/>
  <link rel="stylesheet" type="text/css" href="{{asset('media/css/style.css')}}"/>
  
  @section ('styles')
  @show
  @section ('scripts')
  <script src="{{asset('public/js/app.js')}}">  
  </script>

  @show
</head>
<body>

  <div id="gallery">
       <div class="photo">
         <img src="{{asset('public/media/img/sl1.jpg')}}" class="shown"></img>
         <img src="{{asset('public/media/img/sl2.jpg')}}"></img>
         <img src="{{asset('public/media/img/sl4.jpg')}}"></img>
       </div>

       <div id="poloska">
         <div class="tabs">
            <div class="rec" onclick="galleryspin('1')"></div>
            <div class="rec" onclick="galleryspin('2')"></div>
            <div class="rec" onclick="galleryspin('3')"></div>
        </div>
       </div>
       
        
   </div>

   <div id="logo">
     <img src="{{asset('public/media/img/logo1.png')}}" width="350px">
   </div>

  @include('layouts.topmenu')

<div class="col-md-12">
<h2>Самое интересное</h2>
<hr>
</div>
    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
                 <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project One</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Learn More</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project Two</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Learn More</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project Three</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Learn More</a>
          </div>
        </div>


      </div>
      </div>



    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item">
      
        <div class="card h-100">
        <h2>Добро пожаловать</h2>
                  <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project One</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Learn More</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
     
        <div class="card h-100">
         <h2>Комментарии</h2>
            <table class="comm1">
            <tr><td><h4>
              <a href="#">Статья 1</a>
            </h4></td></tr>
            	<tr>
            	<td valign="top">
            		<a href="#"><img class="card1" src="http://placehold.it/700x400" alt=""></a>
            	</td>
            	<td>  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p></td>
            	</tr><hr>

            </table>

            <table class="comm1">
            <tr><td><h4>
              <a href="#">Статья 2</a>
            </h4>
            </td></tr>
            	<tr>
            	<td valign="top">
            		<a href="#"><img class="card1" src="http://placehold.it/700x400" alt=""></a>
            	</td>
            	<td>  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p></td>
            	</tr><hr>

            </table>

   
  
          <div class="card-footer">
            <a href="#" class="btn btn-primary"><</a>
            <a href="#" class="btn btn-primary">></a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
      
        <div class="card h-100">
        <h2>Самое интересное</h2>
          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project Three</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Learn More</a>
          </div>
        </div>

        
      </div>
      </div>

  		<div class="col-md-2">
  		@foreach ($v_catalogs as $one)
      <a href="{{asset('catalog/'.$one->id)}}" class="btn btn-default btn-block">{{$one->name}}</a>
      @endforeach
      
		<a href="{{asset('feedback')}}" class="btn btn-default btn-block">Отзывы</a>
  		</div>
  		<div class="col-md-8">
		@yield ('content')
		</div>
  		<div class="col-md-2">
		<a href="{{asset('basket')}}" class="btn btn-block btn-lg btn-default">Моя корзина ({{$cookie_count}})</a>
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
	&copy MaryLolly
</div>


<div id="preloader_malc">
</div>
<div>
	<img src="{{asset('public/media/img/logo1.png')}}" width="350px" id="preloader">

</div>


@section ('scripts')
<script src="{{asset('public/js/slider.js')}}">  
</script>

 <script type="text/javascript">
	function preloader() {
  if (sessionStorage.getItem('preloader-uuid-here')) {
  	document.getElementById("preloader_malc").style.display = "none";
  	document.getElementById("preloader").style.display = "none";
    
    return;
  } else {
    document.getElementById("preloader_malc").style.display = "block";
    document.getElementById("preloader").style.display = "block";
    sessionStorage.setItem('preloader-uuid-here', '1');

    setTimeout(function() {

			document.getElementById("preloader_malc").style.display = "none";

		}, 2700);

  }
}

preloader();
</script>

  
</body>
</html>