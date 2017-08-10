<?php

namespace Custom\Http\Controllers\Line;

use Custom\Http\Controllers\ApiController;
use Custom\Models\Product\Product;
use Custom\Utils\Transformers\ProductTransformer;

class LineProductController extends ApiController {

    protected $productTransformer;

    public function __construct(ProductTransformer $productTransformer)
    {
        $this->productTransformer = $productTransformer;
    }

    public function index($lineId)
    {
        $products = Product::with('translation')->whereHas('lines', function ($query) use ($lineId)
        {
            $query->where('line_id', $lineId);
        })->get();


        return $this->respond([
            'data' => $this->productTransformer->transformCollection($products->all())
        ]);


    }
}
