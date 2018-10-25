@extends('layouts.base')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Отзыв</label>
    <textarea class="form-control" rows="3"></textarea>
  </div>
  <div class="form-group">
    <label for="exampleInputFile">Прикрепить текстовый файл</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">Example block-level help text here.</p>
  </div>
  
  <button type="submit" class="btn btn-default">Отправить</button>
</form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
