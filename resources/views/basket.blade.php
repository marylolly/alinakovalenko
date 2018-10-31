
@extends ('layouts.base')
@section ('content')
@section ('scripts')

@parent
<script src="{{asset('/media/ckeditor/ckeditor/ckeditor.js')}}">

	
</script>

<script src="{{asset('/media/js/order.js')}}"></script>
<script src="{{asset('/media/js/test.js')}}"></script>


@endsection

<h2>Моя корзина</h2>
  	<div class="maintext"> 
  	<form method="post" action="{{asset('order')}}">
  		@csrf
		<table class="table table-bordered table-striped" width="100%">
		<tr>
		   <th>
		    Изображение
		   </th>
		   <th>
		    Наименование
		   </th>
		   <th>
		    Цена, руб.
		   </th>
		   <th>
		    Количество
		   </th>
		   <th>
		    Сумма
		   </th>
		   <th>
		    Удалить
		   </th>
		</tr>
		@php
		$counts=0;
		$itog=0;
		@endphp
		@foreach ($arr as $key=>$value)
		@php
		$count=$value*$products[$key]->price;
		$counts+=$value;
		$itog+=$count;
		@endphp
		<tr>
		    <td>
				@if($products[$key]->picture)
					<img class="product" src="{{asset('uploads/thumb/'.$products[$key]->picture)}}"/>
				@endif
		    </td>
	        <td>{{$products[$key]->name}}</td>
		    <td><span id="price_{{$key}}">{{$products[$key]->price}}</span></td>
			<td class="form-group col-md-1">
				<input min="0" type="number" data-id="{{$key}}" value="{{$value}}" 
				class="form-control count1" name="{{$key}}">
				
			    </input>
		    </td>
			<td><span id="count_{{$key}}">{{$count}}</span></td>
			<td><a href="{{asset('basket/dell/'.$key)}}" data-id="{{$key}}">X</a></td>
		</tr>
		
		@endforeach
		<tr>
		   <th colspan="3">
		    Итого
		   </th>
		   <th>
		    {{$counts}}
		   </th>
		   <th>
		    {{$itog}}
		   </th>
		   <th>
		    <a href="{{asset('basket/clear/')}}">Очистить корзину</a>
		   </th>
		</tr>
		</table>
		<div id="ord" align="center">
			<button type="button"  class="btn btn-lg btn-info">Оформить заказ</button>
		</div>
<div id="of" style="display: none">
			<br><br><br>

  <div class="form-row" align="left">
    <div class="form-group col-md-4">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="Email" name="email">
    </div>
    <div class="form-group col-md-4">
      <label for="inputPassword4">Фамилия, Имя</label>
      <input required type="text" class="form-control" id="inputName" placeholder="Фамилия, Имя" name="fio">
    </div>
    <div class="form-group col-md-4">
    <label for="exampleFormControlSelect1">Способ доставки</label>
    <select class="form-control" id="exampleFormControlSelect1" name="delivery">
      <option>1</option>
      <option>2</option>
      <option>3</option>
    </select>
  </div>
    <br>
     <div class="form-group col-md-6">
    <label for="inputAddress2">Телефон</label>
    <input type="text" class="form-control" id="inputPhone" placeholder="Номер телефона" name="phone">
  </div>
  </div>
  <div class="form-group col-md-6">
    <label for="inputAddress">Адрес</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Улица, дом, корпус, квартира" name="adres">
  </div>
 
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">Населенный пункт</label>
      <input type="text" class="form-control" id="inputCity" name="city">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">Область</label>
      <select id="inputState" class="form-control" name="region">
        <option selected>Минская</option>
        <option>Брестская</option>
        <option>Витебская</option>
        <option>Гродненская</option>
        <option>Гомельская</option>
        <option>Могилевская</option>
      </select>
    </div>
    <div class="form-group col-md-4">
      <label for="inputZip">Почтовый индекс</label>
      <input type="text" class="form-control" id="Почтовый индекс" name="zipcode">
    </div>
    <div class="form-group col-md-12">
    <label for="exampleInputPassword1">Комментарий</label>
    <textarea name="comment" class="ckeditor"></textarea>
  </div>
   
   
  </div>
 
<div class="hider" align="center">
			<button type="submit" class="btn btn-lg btn-info">Подтвердить заказ</button>
</div> 
</form>

</div>


</div>
  		
		
@endsection		