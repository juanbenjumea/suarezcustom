<?php

namespace Custom\Http\Controllers\Line;

use Custom\Http\Controllers\ApiController;
use Custom\Models\Product\Line;
use Custom\Utils\Transformers\LineTransformer;

class LineController extends ApiController {

    protected $lineTransformer;

    public function __construct(LineTransformer $lineTransformer)
    {
        $this->lineTransformer = $lineTransformer;
    }

    public function show($id)
    {
        $line = Line::with('translation', 'categories', 'image', 'header')->where('id', $id)->get();

        return $this->respond([
            'data' => $this->lineTransformer->transform($line->first())
        ]);
    }
}
