<?php

namespace Custom\Utils\Transformers;

class SportTransformer extends Transformer {

    public function transform($sport)
    {
        $defaultSportName = 'Sport Name';
        $defaultSportDescription = 'Sport without description';
        $name = @$sport['translation'][0]['pivot']['name'] ?: $defaultSportName;
        $description = @$sport['translation'][0]['pivot']['description'] ?: $defaultSportDescription;

        return [
            'id'          => $sport['id'],
            'name'        => $name,
            'description' => $description,
            'image'       => $sport['image']['url'],
            'header'      => $sport['header']['url'],
            'image_name'  => $sport['name']['url']
        ];
    }
}