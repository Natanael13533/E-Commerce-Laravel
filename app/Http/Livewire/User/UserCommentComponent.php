<?php

namespace App\Http\Livewire\User;

use App\Models\Comment;
use Livewire\Component;

class UserCommentComponent extends Component
{
    public function render()
    {
        $comments = Comment::where('user_id', auth()->user()->id)->paginate(10);
        return view('livewire.user.user-comment-component', ['comments' => $comments]);
    }
}
