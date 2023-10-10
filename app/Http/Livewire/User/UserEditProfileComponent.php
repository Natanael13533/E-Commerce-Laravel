<?php

namespace App\Http\Livewire\User;

use App\Models\User;
use Carbon\Carbon;
use Livewire\Component;
use Livewire\WithFileUploads;

class UserEditProfileComponent extends Component
{
    use WithFileUploads;

    public $name;
    public $email;
    public $phone;
    public $address;
    public $image;

    public $newImage;

    public function mount()
    {
        $user = User::findOrFail(auth()->user()->id);
        $this->name = $user->name;
        $this->email = $user->email;
        $this->phone = $user->phone;
        $this->address = $user->address;
        $this->image = $user->image;
    }

    public function updateUser()
    {
        $this->validate([
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'image' => 'required'
        ]);

        $user = User::findOrFail(auth()->user()->id);

        $user->name = $this->name;
        $user->email = $this->email;
        $user->phone = $this->phone;
        $user->address = $this->address;

        if ($this->newImage)
        {
            unlink('assets/imgs/users/'.$user->image);
            $imageName = Carbon::now()->timestamp.'.'.$this->newImage->extension();
            $this->newImage->storeAs('users', $imageName);
            $user->image = $imageName;
        }

        // unlink('assets/imgs/users/'.$user->image);
        // $imageName = Carbon::now()->timestamp.'.'.$this->image->extension();
        // $this->image->storeAs('users', $imageName);
        // $user->image = $imageName;

        $user->save();
        session()->flash('message', 'User has been updated');
    }

    public function render()
    {
        return view('livewire.user.user-edit-profile-component');
    }
}
