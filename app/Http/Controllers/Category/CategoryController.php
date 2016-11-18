<?php

namespace Custom\Http\Controllers\Category;

use Custom\Http\Controllers\ApiController;
use Custom\Utils\Transformers\CategoryTransformer;
use Illuminate\Http\Request;
use Custom\Models\Product\Category;

class CategoryController extends ApiController {

    protected $sportTransformer;

    public function __construct(CategoryTransformer $categoryTransformer)
    {
        $this->categoryTransformer = $categoryTransformer;
    }

    public function index()
    {
        $categories = Category::with(['translation', 'image'])->get();

        return $this->respond([
            'data' => $this->categoryTransformer->transformCollection($categories->all())
        ]);
    }

    public function show($id)
    {
        $category = Category::with('translation', 'icon')->where('id', $id)->get();

        return $this->respond([
            'data' => $this->categoryTransformer->transform($category->first())
        ]);
    }

    public function store(Request $request)
    {
        Sport::create($request->all());
    }

    public function update(Request $request, $id)
    {
        Sport::find($id)->update($request->all());
    }

    public function destroy($id)
    {
        Sport::find($id)->delete();
    }
}
