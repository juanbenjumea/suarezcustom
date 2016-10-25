<?php

namespace Custom\Models\Product;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model {

    use SoftDeletes;
    protected $table = 'pr_product';
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];
    protected $fillable = ['category_id', 'file_image_id', 'reference', 'enabled', 'price'];

    public function translation()
    {
        return $this->belongsToMany('\Custom\Models\Internationalization\Language', 'pr_product_translation')
            ->withPivot('name', 'description')
            ->wherePivot('language_id', session('lang'));
    }

    public function name()
    {
        return $this->translatation->first()->pivot->name;
    }

    public function description()
    {
        return $this->translatation->first()->pivot->description;
    }

    public function image()
    {
        return $this->belongsTo('\Custom\Models\Resource\File', 'file_image_id', 'id');
    }

    public function category()
    {
        return $this->belongsTo('\Custom\Models\Product\Category', 'category_id', 'id');
    }

    public function sports()
    {
        return $this->belongsToMany('\Custom\Models\Product\Sport', 'pr_product_sport');
    }
}
