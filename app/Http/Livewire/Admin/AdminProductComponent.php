<?php

namespace App\Http\Livewire\Admin;

use App\Models\Product;
use App\Models\ProductImages;
use Livewire\Component;
use Livewire\WithPagination;

class AdminProductComponent extends Component
{
    use WithPagination;

    public $product_id;

    public function deleteProduct()
    {
        $product = Product::findOrFail($this->product_id);
        $product->delete();

        //Delete Multiple Images
        $images = ProductImages::where('product_slug', $product->slug)->get();
        foreach ($images as $item) {
            $item->delete();
        }

        session()->flash('message', 'Product has been deleted successfully');
    }

    public function render()
    {
        $products = Product::orderBy('created_at', 'DESC')->paginate(10);
        return view('livewire.admin.admin-product-component', ['products' => $products]);
    }
}
