<?php

namespace App\Http\Livewire;

use App\Models\Comment;
use App\Models\Product;
use App\Models\User;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class DetailsComponent extends Component
{
    public $slug;

    public $rating;
    // public $comments;
    public $name;
    public $email;

    function mount($slug)
    {
        $this->slug = $slug;

        // if(Auth::check())
        // {
        //     $user = User::findOrFail(auth()->user()->id);
        //     $this->name = $user->name;
        //     $this->email = $user->email;
        // }

    }

    // public function addComment()
    // {
    //     if(Auth::check())
    //     {
    //         $this->validate([
    //             'rating' => 'required',
    //             'comments' => 'required',
    //             'name' => 'required',
    //             'email' => 'required'
    //         ]);

    //         $comment = new Comment();

    //         $comment->rating = $this->rating;
    //         $comment->comments = $this->comments;
    //         $comment->status = 0;
    //         $comment->user_id = Auth::user()->id;

    //         $product = Product::where('slug', $this->slug)->firstOrFail();
    //         $comment->product_id = $product->id;
    //         // foreach ($product as $item) {
    //         //     $comment->product_id = $item->id;
    //         // }

    //         $comment->save();

    //         session()->flash('message', 'Comment has been added');
    //     }
    // }

    public function store($product_id, $product_name, $product_price)
    {
        Cart::add($product_id,$product_name,1,$product_price)->associate('\App\Models\Product');
        session()->flash('success_message', 'Item added in cart');
        return redirect()->route('shop.cart');
    }

    public function render()
    {
        $product = Product::where('slug', $this->slug)->firstOrFail();
        $rproducts = Product::where('category_id', $product->category_id)->inRandomOrder()->limit(4)->get();
        $nproducts = Product::Latest()->take(4)->get();
        $comments = Comment::where('product_id', $product->id)->get();
        return view('livewire.details-component', ['product' => $product, 'rproducts' => $rproducts, 'nproducts' => $nproducts, 'comments' => $comments]);
    }
}
