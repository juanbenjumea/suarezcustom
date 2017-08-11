<?php

namespace Custom\Http\Controllers\Category;

use Custom\Http\Controllers\ApiController;
use Custom\Utils\Transformers\TemplateTransformer;
use Illuminate\Http\Request;
use Custom\Models\Product\Template;

class CategoryTemplateController extends ApiController {

    protected $templateTransformer;

    public function __construct(TemplateTransformer $templateTransformer)
    {
        $this->templateTransformer = $templateTransformer;
    }

    public function index()
    {
        $templates = Template::with(['translation', 'pdf', 'preview'])->get();

        return $this->respond([
            'data' => $this->templateTransformer->transformCollection($templates->all())
        ]);
    }
}
