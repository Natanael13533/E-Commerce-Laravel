<div class="header-action-icon-2">
    <a class="mini-cart-icon" href="{{route('shop.cart')}}">
        <img alt="cart" src="{{asset('assets/imgs/theme/icons/icon-cart.svg')}}">
        @if (Cart::instance('cart')->count() > 0)
            <span class="pro-count blue">{{Cart::count()}}</span>
        @endif
    </a>
    <div class="cart-dropdown-wrap cart-dropdown-hm2">
        <ul>
            @foreach (Cart::instance('cart')->content() as $item)
                <li>
                    <div class="shopping-cart-img">
                        @php
                            $images = App\Models\ProductImages::where('product_slug', $item->model->slug)->take(1)->get();
                        @endphp

                        <a href="{{route('product.details', ['slug' => $item->model->slug])}}">
                            @foreach ($images as $image)
                                <img alt="{{$item->model->name}}" src="{{ asset('assets/imgs/products') }}/{{$image->image}}">
                            @endforeach
                        </a>
                    </div>
                    <div class="shopping-cart-title">
                        <h4><a href="{{route('product.details', ['slug' => $item->model->slug])}}">{{substr($item->model->name, 0, 20)}}...</a></h4>
                        <h4><span>{{$item->qty}} × </span>Rp.{{ number_format($item->model->regular_price,2,',','.')}}</h4>
                    </div>
                    {{-- <div class="shopping-cart-delete">
                        <a href="#"><i class="fi-rs-cross-small"></i></a>
                    </div> --}}
                </li>
            @endforeach
        </ul>
        <div class="shopping-cart-footer">
            <div class="shopping-cart-total">
                <h4>Total <span>Rp.{{Cart::instance('cart')->total()}}</span></h4>
            </div>
            <div class="shopping-cart-button">
                <a href="{{route('shop.cart')}}" class="outline">View cart</a>
                <a href="checkout.html">Checkout</a>
            </div>
        </div>
    </div>
</div>
