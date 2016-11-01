<?php

namespace Custom\Utils\Transformers;

class ProductTransformer extends Transformer {

    public function transform($product)
    {
        $defaultProductName = 'Products Name';
        $defaultProductDescription = 'Products without description';
        $name = @$product['translation'][0]['pivot']['name'] ?: $defaultProductName;
        $description = @$product['translation'][0]['pivot']['description'] ?: $defaultProductDescription;

        return [
            'id'          => $product['id'],
            'name'        => $name,
            'description' => $description,
            'image'       => $product['image']['url'],
        ];
    }
}