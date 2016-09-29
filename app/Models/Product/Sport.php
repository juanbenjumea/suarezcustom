<?php

namespace Custom\Models\Product;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Sport extends Model
{
    use SoftDeletes;
    protected $table = 'pr_sport';
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];
    protected $fillable = ['name', 'file_image_id', 'file_icon_id'];
    
    public function translation(){
        return $this->belongsToMany('\Custom\Models\Internationalization\Language', 'pr_sport_translation')
                    ->withPivot('name', 'description')
                    ->wherePivot('language_id', 1);
    }

    public function name(){
        return $this->translation->first()->pivot->name;
    }

    public function description(){
        return $this->translation->first()->pivot->description;
    }

    public function image(){
        return $this->belongsTo('\Custom\Models\Resource\File', 'file_image_id', 'id');
    }

    public function icon(){
        return $this->belongsTo('\Custom\Models\Resource\File', 'file_icon_id', 'id');
    }

    public function categories(){
        return $this->belongsToMany('\Custom\Models\Product\Category', 'pr_sport_category');
    }
}
