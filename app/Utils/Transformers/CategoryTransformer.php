<?php

namespace Custom\Utils\Transformers;

class CategoryTransformer extends Transformer {

    public function transform($category)
    {
        $defaultCategoryName = 'Category Name';
        $defaultCategoryDescription = 'Category without description';
        $name = @$category['translation'][0]['pivot']['name'] ?: $defaultCategoryName;
        $description = @$category['translation'][0]['pivot']['description'] ?: $defaultCategoryDescription;

        $defaultLineName = 'Line Name';
        $defaultLineDescription = 'Line without description';
        $lineId = @$category['line']['id'];
        $lineName = @$category['line']['translation'][0]['pivot']['name'] ?: $defaultLineName;
        $lineDescription = @$category['line']['translation'][0]['pivot']['description'] ?: $defaultLineDescription;
        
        $defaultSportName = 'Sport Name';
        $defaultSportDescription = 'Sport without description';
        $sportId = @$category['line']['sport']['id'];
        $sportName = @$category['line']['sport']['translation'][0]['pivot']['name'] ?: $defaultSportName;
        $sportDescription = @$category['sport']['translation'][0]['pivot']['description'] ?: $defaultSportDescription;
        
        return [
            'id'          => $category['id'],
            'name'        => $name,
            'description' => $description,
            'image'       => $category['image']['url'],
            'header'      => $category['header']['url'],
            'image_name'  => $category['name']['url'],
            'line_id'   => $lineId,
            'line_name'   => $lineName,
            'line_description'   => $lineDescription,
            'sport_id'   => $sportId,
            'sport_name'   => $sportName,
            'sport_description'   => $sportDescription
        ];
    }
}