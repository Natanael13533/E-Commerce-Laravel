<div>
    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="/" rel="nofollow">Home</a>
                    <span></span> All Products
                </div>
            </div>
        </div>
        <section class="mt-50 mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-header">

                            <div class="row">
                                <div class="col-md-6">All Comments</div>
                            </div>
                        </div>
                        <div class="card-body">
                            @if (Session::has('message'))
                                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                            @endif
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Image</th>
                                        <th>Comment</th>
                                        <th>Rating</th>
                                        <th>Product Name</th>
                                        <th>Date</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($comments as $comment)
                                        <tr>
                                            <td>{{$loop->iteration + $comments->firstItem() - 1}}</td>
                                            <td>
                                                @if ($comment->user->image == NULL)
                                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
                                                    class="rounded-circle img-fluid" width="50" height="50">
                                                @else
                                                    <img src="{{ asset('assets/imgs/users') }}/{{$comment->user->image}}" alt="{{$comment->user->name}}" width="50" height="50" />
                                                @endif

                                            </td>
                                            <td>{{$comment->comments}}</td>
                                            <td>{{$comment->rating}}</td>
                                            <td>{{$comment->product->name}}</td>
                                            <td>{{$comment->created_at}}</td>
                                            <td>
                                                <a href="{{route('user.comment.edit', ['comment_id' => $comment->id])}}" class="text-info">Edit</a>
                                                {{-- <a href="#" onclick="deleteConfirmation({{$product->id}})" class="text-danger" style="margin-left: 20px">Delete</a> --}}
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            {{$comments->links()}}
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</div>
