@extends('admin.layouts.master')

@section('content')

    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">{{ trans('quickadmin::templates.templates-customView_index-list') }}</div>
        </div>
        <div class="portlet-body">
		<table width="100%" class="table table-bordered table-striped">
            
		<tr>
		   <th>
		    ФИО
		   </th>
		   <th>
		    Email
		   </th>
		   <th>
		    Телефон
		   </th>
		   <th>
		    Статус
		   </th>
		   <th>
		    Действие
		   </th>
		   <th>
		    Заказано товаров
		   </th>
		   
		@foreach($all as $one)
		<tr>
		    <td>
			{{$one->fio}}
		    </td>
	        <td>{{$one->email}}</td>
		    <td>{{$one->phone}}</td>
			<td>{{$one->status}}</td>
			<td><a href="{{asset('admin/order/one/'.$one->id)}}">Открыть</a></td>
			<td><span>{{count(unserialize($one->body))}}</span></td>
		</tr>
		
		@endforeach
		</table>
		{!!$all->links()!!}
        </div>
	</div>

@endsection