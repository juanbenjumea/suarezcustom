<?php

namespace Custom\Models\Product;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model {

    use SoftDeletes;
    protected $table = 'pr_category';
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];
    protected $fillable = ['file_image_id', 'file_header_id'];

    public function translation()
    {
        return $this->belongsToMany('\Custom\Models\Internationalization\Language', 'pr_category_translation')
            ->withPivot('name', 'description')
            ->wherePivot('language_id', session('lang'));
    }

    public function image()
    {
        return $this->belongsTo('\Custom\Models\Resource\File', 'file_image_id', 'id');
    }

    public function header()
    {
        return $this->belongsTo('\Custom\Models\Resource\File', 'file_header_id', 'id');
    }

    public function products()
    {
        return $this->hasMany('\Custom\Models\Product\Product', 'category_id', 'id');
    }

    public function sports()
    {
        return $this->belongsToMany('\Custom\Models\Product\Sport', 'pr_sport_category');
    }
}
