<?php

namespace Custom\Utils\Transformers;

class TemplateTransformer extends Transformer {

    public function transform($template)
    {
        $defaultTemplateName = 'Template Name';
        $name = @$template['translation'][0]['pivot']['name'] ?: $defaultTemplateName;

        return [
            'id'          => $template['id'],
            'name'        => $name,
            'pdf'         => $template['pdf']['url'],
            'preview'     => $template['preview']['url'],
        ];
    }
}