<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Participant extends Model
{
    //
    protected $fillable = ['name', 'age', 'dob', 'profession', 'locality', 'no_of_guests', 'address'];
}
