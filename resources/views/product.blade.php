
@extends ('layouts.base')
@section ('content')

<h2>{{$obj->name}}</h2>
<img class="product" src="{{asset('uploads/thumb/'.$obj->picture)}}"/>
  		<div class="maintext"> 
		{!!$obj->body!!}
		
		
	
					
				
		</div>
  		
		
@endsection		