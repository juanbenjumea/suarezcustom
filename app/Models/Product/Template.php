<?php

namespace Custom\Models\Product;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Template extends Model {

    use SoftDeletes;
    protected $table = 'pr_template';
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];
    protected $fillable = ['category_id', 'file_pdf_id', 'file_preview_id'];

    public function translation()
    {
        return $this->belongsToMany('\Custom\Models\Internationalization\Language', 'pr_template_translation')
            ->withPivot('name')
            ->wherePivot('language_id', session('lang'));
    }

    public function pdf()
    {
        return $this->belongsTo('\Custom\Models\Resource\File', 'file_pdf_id', 'id');
    }

    public function preview()
    {
        return $this->belongsTo('\Custom\Models\Resource\File', 'file_preview_id', 'id');
    }

    public static function create(array $attributes = [])
    {
        // TODO Guillermo tirate es metodo de bacan pues....
    }

    public function update(array $attributes = [], array $options = [])
    {
        // TODO Guillermo tirate es metodo de bacan pues....
    }


}
