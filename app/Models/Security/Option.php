<?php

namespace Custom\Models\Security;

use Illuminate\Database\Eloquent\Model;

class Option extends Model
{
     /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'co_sec_menu_option';
    public $timestamps = false;
}
