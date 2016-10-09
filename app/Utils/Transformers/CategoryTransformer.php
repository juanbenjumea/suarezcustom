<?php

namespace Custom\Utils\Transformers;

class CategoryTransformer extends Transformer {

    public function transform($product)
    {
        $defaultCategoryName = 'Category Name';
        $defaultCategoryDescription = 'Category without description';
        $name = @$product['translation'][0]['pivot']['name'] ?: $defaultCategoryName;
        $description = @$product['translation'][0]['pivot']['description'] ?: $defaultCategoryDescription;

        return [
            'id'          => $product['id'],
            'name'        => $name,
            'description' => $description,
            'image'       => $product['image']['name'],
            'header'      => $product['header']['name']
        ];
    }
}