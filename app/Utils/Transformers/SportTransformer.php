<?php

namespace Custom\Utils\Transformers;

class SportTransformer extends Transformer {

    public function transform($sport)
    {
        return [
            'id'          => $sport['id'],
            'name'        => $sport['translation'][0]['pivot']['name'],
            'description' => $sport['translation'][0]['pivot']['description'],
            'image'       => $sport['image']['name'],
            'icon'        => $sport['icon']['name']
        ];
    }
}