<div style="display: flex; justify-content: center;">
    <style>
        .rate {
            float: left;
            height: 46px;
            padding: 0 10px;
        }
        .rate:not(:checked) > input {
            position:absolute;
            top:-9999px;
        }
        .rate:not(:checked) > label {
            float:right;
            width:1em;
            overflow:hidden;
            white-space:nowrap;
            cursor:pointer;
            font-size:30px;
            color:#ccc;
        }
        .rate:not(:checked) > label:before {
            content: '★ ';
        }
        .rate > input:checked ~ label {
            color: #ffc700;
        }
        .rate:not(:checked) > label:hover,
        .rate:not(:checked) > label:hover ~ label {
            color: #deb217;
        }
        .rate > input:checked + label:hover,
        .rate > input:checked + label:hover ~ label,
        .rate > input:checked ~ label:hover,
        .rate > input:checked ~ label:hover ~ label,
        .rate > label:hover ~ input:checked ~ label {
            color: #c59b08;
        }
    </style>
    <div class="card" style="width: 500px">
        <div class="card-header">
            <h5>Add Comment</h5>
        </div>
        <div class="card-body">
            <p>Already have an account? <a href="{{route('login')}}">Log in instead!</a></p>
            @if (Session::has('message'))
                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
            @endif
            <form wire:submit.prevent="AddComment">
                <div class="row">
                    <div class="form-group col-md-12">
                        @foreach ($pImages as $item)
                            <img src="{{asset('assets/imgs/products')}}/{{$item->image}}" width="120">
                        @endforeach
                    </div>
                    <div class="rate form-group col-md-5">
                        <input type="radio" id="star5" name="rate" value="5" wire:model="rating"/>
                        <label for="star5" title="text">5 stars</label>
                        <input type="radio" id="star4" name="rate" value="4" wire:model="rating"/>
                        <label for="star4" title="text">4 stars</label>
                        <input type="radio" id="star3" name="rate" value="3" wire:model="rating"/>
                        <label for="star3" title="text">3 stars</label>
                        <input type="radio" id="star2" name="rate" value="2" wire:model="rating"/>
                        <label for="star2" title="text">2 stars</label>
                        <input type="radio" id="star1" name="rate" value="1" wire:model="rating"/>
                        <label for="star1" title="text">1 star</label>
                        @error('rating')
                            <p class="text-danger">{{$message}}</p>
                        @enderror
                    </div>
                    {{-- <br> --}}
                    <div class="form-group col-md-12">
                        <label for="comment">Comments</label>
                        <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="12" placeholder="Write Comment" wire:model="comments"></textarea>
                        @error('comments')
                            <p class="text-danger">{{$message}}</p>
                        @enderror
                        @error('product_id')
                            <p class="text-danger">You have added comment in this product</p>
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
