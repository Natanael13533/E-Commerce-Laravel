<?php

namespace App\Http\Livewire;

use App\Models\Category;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Livewire\Component;

class HomeComponent extends Component
{

    public function store($product_id, $product_name, $product_price)
    {
        Cart::instance('cart')->add($product_id,$product_name,1,$product_price)->associate('\App\Models\Product');
        session()->flash('success_message', 'Item added in cart');
        $this->emitTo('cart-icon-component', 'refreshComponent');
        return redirect()->route('shop.cart');
    }

    public function render()
    {
        $products = Product::Latest()->limit(8)->get();
        $nproducts = Product::inRandomOrder()->take(10)->get();
        $categories = Category::orderBy('name', 'ASC')->get();
        return view('livewire.home-component', ['products' => $products, 'nproducts' => $nproducts, 'categories' => $categories]);
    }
}
