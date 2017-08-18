<?php

namespace Custom\Utils\Transformers;

class CategoryTransformer extends Transformer {

    public function transform($category)
    {
        $defaultCategoryName = 'Category Name';
        $defaultCategoryDescription = 'Category without description';
        $name = @$category['translation'][0]['pivot']['name'] ?: $defaultCategoryName;
        $description = @$category['translation'][0]['pivot']['description'] ?: $defaultCategoryDescription;

        return [
            'id'          => $category['id'],
            'name'        => $name,
            'description' => $description,
            'image'       => $category['image']['url'],
            'header'      => $category['header']['url'],
            'image_name'  => $category['name']['url'],
            'lines'       => $category['lines']
        ];
    }
}