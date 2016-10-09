<?php

namespace Custom\Http\Controllers\Sport;

use Custom\Http\Controllers\ApiController;
use Custom\Models\Product\Product;
use Custom\Utils\Transformers\ProductTransformer;

class SportCategoryProductController extends ApiController {

    protected $productTransformer;

    public function __construct(ProductTransformer $productTransformer)
    {
        $this->productTransformer = $productTransformer;
    }

    public function index($sportId, $categoryId)
    {
        $products = Product::with('translation')->where('category_id', $categoryId)->whereHas('sports', function ($query) use ($sportId)
        {
            $query->where('sport_id', $sportId);
        })->get();

        return $this->respond([
            'data' => $this->productTransformer->transformCollection($products->all())
        ]);

    }
}
