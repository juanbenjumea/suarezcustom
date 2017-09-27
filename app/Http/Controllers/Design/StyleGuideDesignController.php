<?php

namespace Custom\Http\Controllers\Design;

use Illuminate\Http\Request;

use Custom\Http\Requests;
use Custom\Http\Controllers\ApiController;
use Custom\Models\Product\Design;
use Custom\Utils\Transformers\DesignTransformer;

class StyleGuideDesignController extends ApiController {
    
    protected $designTransformer;

    public function __construct(DesignTransformer $designTransformer)
    {
        $this->designTransformer = $designTransformer;
    }
    
    public function index($styleguideId)
    {
        $design = Design::with(['translation', 'images']);
        if($styleguideId == 0) {
            $design->whereNull('styleguide_id');
        }
        else {
            $design->where('styleguide_id', $styleguideId);
        }
        $designs = $design->get();
                

        return $this->respond([
            'data' => $this->designTransformer->transformCollection($designs->all())
        ]);
    }
}
