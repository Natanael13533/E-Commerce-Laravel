<?php

namespace App\Http\Livewire\User;

use App\Models\Comment;
use App\Models\Product;
use App\Models\ProductImages;
use Livewire\Component;

class UserAddCommentComponent extends Component
{
    public $slug;

    public $comments;
    public $rating;
    public $product_id;

    function mount($slug)
    {
        $this->slug = $slug;
    }

    function AddComment()
    {
        $this->validate([
            'comments' => 'required',
            'rating' => 'required',
            // 'user_id' => 'exists:comments,user_id'
        ]);

        $comment = new Comment();
        $comment->comments = $this->comments;
        $comment->rating = $this->rating;

        $comment->status = 0;

        $product = Product::where('slug', $this->slug)->firstOrFail();
        $comment->product_id = $product->id;

        $comment->user_id = auth()->user()->id;

        $comment->save();

        session()->flash('message', 'comment has been added succesfully');
    }

    public function render()
    {
        $pImages = ProductImages::where('product_slug', $this->slug)->get();
        return view('livewire.user.user-add-comment-component', ['pImages' => $pImages]);
    }
}
