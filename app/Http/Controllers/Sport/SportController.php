<?php

namespace Custom\Http\Controllers\Sport;

use Custom\Http\Controllers\ApiController;
use Custom\Utils\Transformers\SportTransformer;
use Illuminate\Http\Request;
use Custom\Models\Product\Sport;

class SportController extends ApiController {

    protected $sportTransformer;

    public function __construct(SportTransformer $sportTransformer)
    {
        $this->sportTransformer = $sportTransformer;
    }

    public function index()
    {
        $sports = Sport::with(['translation', 'image', 'header', 'name'])->get();

        return $this->respond([
            'data' => $this->sportTransformer->transformCollection($sports->all())
        ]);
    }

    public function show($id)
    {
        $sport = Sport::with('translation', 'image', 'header', 'name')->where('id', $id)->get();

        return $this->respond([
            'data' => $this->sportTransformer->transform($sport->first())
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
