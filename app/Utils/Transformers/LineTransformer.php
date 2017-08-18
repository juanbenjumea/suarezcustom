<?php

namespace Custom\Utils\Transformers;

class LineTransformer extends Transformer {

    public function transform($line)
    {
        $defaultLineName = 'Line Name';
        $defaultLineDescription = 'Line without description';
        $name = $line['translation'][0]['pivot']['name'] ?: $defaultLineName;
        $description = $line['translation'][0]['pivot']['description'] ?: $defaultLineDescription;

        return [
            'id'          => $line['id'],
            'name'        => $name,
            'description' => $description,
            'image'       => $line['image']['url'],
            'header'      => $line['header']['url'],
            'image_name'  => $line['name']['url'],
            'categories'  => $line['categories'],
            'sport'       => $line['sport']
        ];
    }
}