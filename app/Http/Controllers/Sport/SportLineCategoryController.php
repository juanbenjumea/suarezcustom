<?php

namespace Custom\Http\Controllers\Sport;

use Custom\Http\Controllers\ApiController;
use Custom\Models\Product\Category;
use Custom\Utils\Transformers\CategoryTransformer;
use Illuminate\Http\Request;

class SportLineCategoryController extends ApiController {

    protected $categoryTransformer;

    public function __construct(CategoryTransformer $categoryTransformer)
    {
        $this->categoryTransformer = $categoryTransformer;
    }

    public function index($sportId, $lineId)
    {
        $categories = Category::with('translation', 'image', 'header', 'name')
                                ->where('line_id', $lineId)
                                ->get();

        return $this->respond([
            'data' => $this->categoryTransformer->transformCollection($categories->all())
        ]);

    }

    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
