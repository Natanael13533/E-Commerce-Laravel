<?php

namespace App\Http\Livewire;

use App\Models\Comment;
use Livewire\Component;

class CommentComponent extends Component
{
    public function render()
    {
        $comments = Comment::paginate(10);
        return view('livewire.comment-component', ['comments' => $comments]);
    }
}
