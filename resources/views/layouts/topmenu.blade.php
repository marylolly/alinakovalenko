<nav>
  <ul class="topmenu">
  <li class="item item-1"><a href="{{asset('index')}}">Главная</a></li>


      <li class="item item-2"><a href="{{asset('about')}}">О компании</a>
      </li>
      <li class="item item-2"><a href="{{asset('services')}}">Услуги</a>
      </li>
      <li class="item item-2"><a href="{{asset('categories')}}">Товары</a>
      </li>
      <li class="item item-2"><a href="{{asset('contakts')}}">Контакты</a>
      </li>
  
    
  
	@guest
                            
                                <li class="item item-7"><a class="nav-link" href="{{ route('login') }}">{{ __('Вход') }}</a></li>

                                @if (Route::has('register'))
                                    <li class="item item-8"><a class="nav-link" href="{{ route('register') }}">{{ __('Регистрация') }}</a></li>
                                @endif
                        @else

                                <li class="item item-9"><a href="{{asset('home')}}">
                                    {{ Auth::user()->name }} 
                                </a></li>

                                
                                    <li class="item item-10"><a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Выход') }}
                                    </a></li>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                

                        @endguest
    </ul>                    
  </nav>