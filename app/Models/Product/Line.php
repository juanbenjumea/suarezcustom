<?php

namespace Custom\Models\Product;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Line extends Model {

    use SoftDeletes;
    protected $table = 'pr_line';
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];
    protected $fillable = ['sport_id', 'category_id', 'file_image_id', 'file_header_id'];

    public function translation()
    {
        return $this->belongsToMany('\Custom\Models\Internationalization\Language', 'pr_line_translation')
            ->withPivot('description')
            ->wherePivot('language_id', session('lang'));
    }

    public function sport()
    {
        return $this->belongsTo('\Custom\Models\Product\Sport', 'sport_id', 'id');
    }

    public function category()
    {
        return $this->belongsTo('\Custom\Models\Product\Category', 'category_id', 'id');
    }

    public function image()
    {
        return $this->belongsTo('\Custom\Models\Resource\File', 'file_image_id', 'id');
    }

    public function header()
    {
        return $this->belongsTo('\Custom\Models\Resource\File', 'file_header_id', 'id');
    }
}
