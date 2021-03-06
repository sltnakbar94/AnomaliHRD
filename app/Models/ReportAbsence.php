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

    public function department()
    {
        return $this->hasOne(Department::class, 'DeptID', 'defaultdeptid');
    }

    public function date()
    {
        return $this->hasOne(Checkinout::class, 'userid', 'userid')->whereDate('checktime', today());
    }

    public function CheckIn()
    {
        return $this->hasOne(CheckIn::class, 'userid', 'userid')->whereDate('checktime', today())->orderBy('checktime', 'asc');
    }

    public function CheckOut()
    {
        return $this->hasOne(CheckOut::class, 'userid', 'userid')->whereDate('checktime', today())->orderBy('checktime', 'desc');
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
