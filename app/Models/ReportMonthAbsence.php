<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class ReportMonthAbsence extends Model
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

    public function checktime()
    {
        return $this->hasMany(Checkinout::class, 'userid', 'userid');
    }

    public function date()
    {
        return $this->hasOne(Checkinout::class, 'userid', 'userid');
    }

    public function CheckIn()
    {
        return $this->hasOne(CheckIn::class, 'userid', 'userid')->orderBy('checktime', 'asc');
    }

    public function CheckOut()
    {
        return $this->hasOne(CheckOut::class, 'userid', 'userid')->orderBy('checktime', 'desc');
    }

    public function department()
    {
        return $this->hasOne(Department::class, 'DeptID', 'defaultdeptid');
    }

    public function attendance()
    {
        return $this->hasMany(Department::class, 'DeptID', 'defaultdeptid');
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
