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