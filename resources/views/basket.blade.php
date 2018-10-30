
@extends ('layouts.base')
@section ('content')

<h2>Моя корзина</h2>
  		<div class="maintext"> 
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
		    <td>{{$products[$key]->price}}</td>
			<td>{{$value}}</td>
			<td>{{$count}}</td>
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
		</div>
  		
		
@endsection		