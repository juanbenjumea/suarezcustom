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
            'icon'       => $category['icon']['url'],
            'lines'       => $category['lines']
        ];
    }
}