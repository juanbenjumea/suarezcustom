<?php

namespace Custom\Models\Resource;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class File extends Model
{
    use SoftDeletes;
    protected $table = 'co_rsc_file';
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];
    protected $fillable = ['name'];
}
