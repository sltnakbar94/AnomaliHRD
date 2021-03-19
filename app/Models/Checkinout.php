<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;

class Checkinout extends Model
{
    use HasFactory, CrudTrait;

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
    }
    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'checkinout';
    // protected $primaryKey = 'userid';
    // public $timestamps = false;
    protected $guarded = ['id'];
    // protected $fillable = [];
    // protected $hidden = [];
    protected $datesFormat = 'Y-m-d';
    // protected $casts = [
    //     'checktime' => 'date',
    // ];

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
    public function getChecktimeAttribute($value)
    {
        return $this->attributes['checktime'] = (new Carbon($value))->format('d-m-Y');
    }

    public function getAttendanceAttribute($value)
    {
        return $this->attributes['attendance'] = $value->selectRaw("count(distinct(date(checktime))) as jumlah");
    }

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
}
