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
  <script type="text/javascript" src="https://vk.com/js/api/openapi.js?160"></script>

  @show
</head>
<body>

  <div id="gallery">
       <div class="photo">
         <img src="{{asset('public/media/img/sl1.jpg')}}" class="shown"></img>
         <img src="{{asset('public/media/img/sl2.jpg')}}"></img>
         <img src="{{asset('public/media/img/sl4.jpg')}}"></img>
           <div id="poloska">
         <div class="tabs">
            <div class="rec" onclick="galleryspin('1')"></div>
            <div class="rec" onclick="galleryspin('2')"></div>
            <div class="rec" onclick="galleryspin('3')"></div>
        </div>
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
                 <a href="#"><img class="card-img-top" class="product" src="http://placehold.it/700x400"></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">сяыфвф</a>
            </h4>
            <p class="card-text">выававыаы</p>
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
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio</p>
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
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!ipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil,</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Learn More</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
     
        <div class="card h-100">
         <h2>Комментарии</h2>
         <div class="card-body">
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
         </div>   

   
  
          <div class="card-footer">
            <a href="#" class="btn btn-primary"><</a>
            <a href="#" class="btn btn-primary">></a>
          </div>
        </div>
      </div>
     <div class="col-lg-4 col-sm-6 portfolio-item">
     
        <div class="card h-100">
         <h2>Новости</h2>
         <div class="card-body">
            <table class="comm1">
            <tr><td colspan="2"><h4>
              <a href="#">Новость 1</a>
            </h4></td></tr>
            	<tr>
            	<td valign="top"  class="card1 c2">
            		<a href="#">01.01.1999</a>
            	</td>
            	<td>  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? s in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p></td>
            	</tr><hr>

            </table>

            <table class="comm1">
            <tr><td colspan="2"><h4>
              <a href="#">новость 2</a>
            </h4>
            </td></tr>
            	<tr>
            	<td valign="top" class="card1 c2">
            		<a href="#">01.01.1999</a>
            	</td>
            	<td>  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? </p></td>
            	</tr><hr>

            </table>
             <table class="comm1">
            <tr><td colspan="2"><h4>
              <a href="#">новость 3</a>
            </h4>
            </td></tr>
            	<tr>
            	<td valign="top" class="card1 c2">
            		<a href="#">01.01.1999</a>
            	</td>
            	<td>  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? </p></td>
            	</tr><hr>

            </table>
         </div>   


           <div class="card-footer">
            <a href="#" class="btn btn-primary">Больше</a>
          </div>

   
  
        </div>
      </div>
        </div>

        
      </div>
      </div>

      <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <div class="card-body">
            <!-- VK Widget -->
<div id="vk_groups"></div>
<script type="text/javascript">
VK.Widgets.Group("vk_groups", {mode: 4, wide: 1, height: "350", color3: 'C61470'}, 178750895);
</script>
          </div>
         </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
     
        <div class="card h-100">
           <div class="card-body">
            <iframe style="width:100%;border:0;overflow:hidden;background-color:transparent;height:400px" scrolling="no" src="https://fortrader.org/informers/getInformer?st=8&cat=7&title=%D0%9A%D1%83%D1%80%D1%81%D1%8B%20%D0%B2%D0%B0%D0%BB%D1%8E%D1%82&texts=%7B%22toolTitle%22%3A%22%D0%92%D0%B0%D0%BB%D1%8E%D1%82%D0%B0%22%2C%22todayCourse%22%3A%22%22%7D&mult=1&showGetBtn=0&hideHeader=0&hideDate=0&w=0&codes=1&colors=false&items=2%2C21%2C47%2C11111&columns=todayCourse&toCur=14"></iframe>
         </div>   

   
        </div>
      </div>
     <div class="col-lg-4 col-sm-6 portfolio-item">
     
        <div class="card h-100">
          <div class="card-body" align="center">
            <!-- weather widget start --><a target="_blank" href="https://nochi.com/weather/istanbul-18319,17469,893,18522"><img src="https://w.bookcdn.com/weather/picture/2_18319,17469,893,18522_1_20_887ddd_270_ffffff_333333_08488D_1_ffffff_333333_0_6.png?scode=2&domid=589&anc_id=58238"  alt="booked.net"/></a><!-- weather widget end -->
   
  
        </div>
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
<div class="footer1">
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