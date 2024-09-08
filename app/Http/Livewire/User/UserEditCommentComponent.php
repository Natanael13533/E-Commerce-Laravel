<?php

namespace App\Http\Livewire\User;

use App\Models\Comment;
use App\Models\ProductImages;
use Livewire\Component;

class UserEditCommentComponent extends Component
{
    public $comment_id;
    public $rating;
    public $comments;

    function mount($comment_id)
    {
        $comment = Comment::findOrFail($comment_id);
        $this->comment_id = $comment->id;
        $this->rating = $comment->rating;
        $this->comments = $comment->comments;
    }

    function updateComment()
    {
        $this->validate([
            'rating' => 'required',
            'comments' => 'required'
        ]);

        $comment = Comment::findOrFail($this->comment_id);
        $comment->comments = $this->comments;
        $comment->rating = $this->rating;

        $comment->save();

        session()->flash('message', 'comments has been updated succesfully');
    }

    public function render()
    {
        $comment = Comment::findOrFail($this->comment_id);
        $pImages = ProductImages::where('product_slug', $comment->product->slug)->get();
        return view('livewire.user.user-edit-comment-component', ['pImages' => $pImages]);
    }
}
