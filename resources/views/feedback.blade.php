
@extends ('layouts.base')
@section ('content')

<h2>Отзывы</h2>
@foreach($feeds as $one)
  		<div class="room"> 
		
		{!!$one->body!!}
		
		</div>
		<div class="time"> 
		
		{{$one->created_at}}
		
		</div>
		
@endforeach  		
		
@endsection		