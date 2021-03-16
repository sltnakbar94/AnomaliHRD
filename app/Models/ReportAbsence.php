<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class ReportAbsence extends Model
{
    use CrudTrait;

    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'userinfo';
    protected $primaryKey = 'userid';
    // public $timestamps = false;
    protected $guarded = ['userid'];
    // protected $fillable = [];
    // protected $hidden = [];
    // protected $dates = [];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */

    public function date()
    {
        return $this->hasMany(Checkinout::class, 'userid', 'userid')->where('checktime', '=', today()->format('d-m-Y'));
    }

    public function CheckIn()
    {
        return $this->hasMany(Checkinout::class, 'userid', 'userid')->whereDate('checktime', today())->orderBy('checktime', 'asc');
    }

    public function CheckOut()
    {
        return $this->hasMany(Checkinout::class, 'userid', 'userid')->whereDate('checktime', today())->orderBy('checktime', 'desc');
    }

    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | ACCESSORS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
}
