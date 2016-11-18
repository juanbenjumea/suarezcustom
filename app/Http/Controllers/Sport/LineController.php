<?php

namespace Custom\Http\Controllers\Sport;

use Custom\Http\Controllers\ApiController;
use Custom\Models\Product\Line;
use Custom\Utils\Transformers\LineTransformer;
use Illuminate\Http\Request;

class LineController extends ApiController {

    protected $lineTransformer;

    public function __construct(LineTransformer $lineTransformer)
    {
        $this->lineTransformer = $lineTransformer;
    }

    public function index($sportId)
    {
        $lines = Line::with('translation', 'image', 'header', 'category.icon')
                        ->where('sport_id', $sportId)
                        ->get();

        return $this->respond([
            'data' => $this->lineTransformer->transformCollection($lines->all())
        ]);

    }

    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
        $line = Line::with('translation', 'image', 'header')->where('id', $id)->get();

        return $this->respond([
            'data' => $this->lineTransformer->transform($line->first())
        ]);
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
