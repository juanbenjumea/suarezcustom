<?php

namespace Custom\Utils\Transformers;

class DesignTransformer extends Transformer {

    public function transform($design)
    {
        $defaultDesignName = 'Design Name';
        $name = $design['translation'][0]['pivot']['name'] ?: $defaultDesignName;
        
        $images = [];
        foreach($design['images'] as $img){
            $images[] = $img['url'];
        }
        
        return [
            'id'          => $design['id'],
            'name'        => $name,
            'images'      => $images
        ];
    }
}