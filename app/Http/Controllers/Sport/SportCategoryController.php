<?php

namespace Custom\Http\Controllers\Sport;

use Custom\Http\Controllers\ApiController;
use Custom\Models\Product\Category;
use Custom\Utils\Transformers\CategoryTransformer;
use Illuminate\Http\Request;

class SportCategoryController extends ApiController {

    protected $categoryTransformer;

    public function __construct(CategoryTransformer $categoryTransformer)
    {
        $this->categoryTransformer = $categoryTransformer;
    }

    public function index($sportId)
    {
        $categories = Category::with('translation', 'image', 'header')->whereHas('sports', function ($query) use ($sportId)
        {
            $query->where('sport_id', $sportId);
        })->get();

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
