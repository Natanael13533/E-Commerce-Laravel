<div style="display: flex; justify-content: center;">
    <div class="card" style="width: 500px">
        <div class="card-header">
            <h5>Account Edit</h5>
        </div>
        <div class="card-body">
            <p>Already have an account? <a href="login.html">Log in instead!</a></p>
            @if (Session::has('message'))
                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
            @endif
            <form wire:submit.prevent="updateUser">
                <div class="row">
                    <div class="form-group col-md-6">
                        <label for="name">Full Name</label>
                        <input required class="form-control square" name="name" type="text" wire:model="name">
                        @error('name')
                            <p class="text-danger">{{$message}}</p>
                        @enderror
                    </div>
                    <div class="form-group col-md-6">
                        <label for="email">Email Address</label>
                        <input required class="form-control square" name="email" type="email" wire:model="email">
                        @error('email')
                            <p class="text-danger">{{$message}}</p>
                        @enderror
                    </div>
                    <div class="form-group col-md-12">
                        <label for="phone">Phone Number</label>
                        <input required class="form-control square" name="phone" type="tel" wire:model="phone">
                        @error('phone')
                            <p class="text-danger">{{$message}}</p>
                        @enderror
                    </div>
                    <div class="form-group col-md-12">
                        <label for="address">Address</label>
                        <input required class="form-control square" name="address" type="text" wire:model="address">
                        @error('address')
                            <p class="text-danger">{{$message}}</p>
                        @enderror
                    </div>
                    <div class="form-group col-md-12">
                        <label for="image">Image</label>
                        <input required class="form-control square" name="image" type="file" wire:model="newImage">
                        @if ($newImage)
                            <img src="{{$newImage->temporaryUrl()}}" width="120">
                        @else
                            <img src="{{asset('assets/imgs/users')}}/{{$image}}" width="120">
                        @endif
                        @error('image')
                            <p class="text-danger">{{$message}}</p>
                        @enderror
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-fill-out submit">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
