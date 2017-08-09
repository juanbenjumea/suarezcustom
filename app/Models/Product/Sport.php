<?php

namespace Custom\Models\Product;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Sport extends Model {

    use SoftDeletes;
    protected $table = 'pr_sport';
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];
    protected $fillable = ['name', 'file_image_id', 'file_icon_id'];

    public function translation()
    {
        return $this->belongsToMany('\Custom\Models\Internationalization\Language', 'pr_sport_translation')
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

    public static function create(array $attributes = [])
    {
        // TODO Guillermo tirate es metodo de bacan pues....
    }

    public function update(array $attributes = [], array $options = [])
    {
        // TODO Guillermo tirate es metodo de bacan pues....
    }


}
