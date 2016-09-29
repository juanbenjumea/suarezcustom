<?php

namespace Custom\Models\Internationalization;

use Illuminate\Database\Eloquent\Model;


class Language extends Model
{
    protected $table = 'co_in_language';
    protected $fillable = ['name', 'code'];
    public $timestamps = false;
}
