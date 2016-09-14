<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Schedules extends Model
{
    	protected $table = 'schedules';

    public function user()
    {
    	return $this->belongTo('User');
    }
}

