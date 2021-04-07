<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use CrudTrait;

    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'userinfo';
    protected $primaryKey = 'userid';
    public $timestamps = false;
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

    public function jabatan()
    {
        return $this->hasOne(Position::class, 'id', 'position_id');
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
    public function setCvAttribute($value)
    {
        $attribute_name = "cv";
        $disk = "public";
        $destination_path = "empployee/cv";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    public function setKtpAttribute($value)
    {
        $attribute_name = "ktp";
        $disk = "public";
        $destination_path = "empployee/ktp";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    public function setIjazahAttribute($value)
    {
        $attribute_name = "ijazah";
        $disk = "public";
        $destination_path = "empployee/ijazah";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    public function setKkAttribute($value)
    {
        $attribute_name = "kk";
        $disk = "public";
        $destination_path = "empployee/kk";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    public function setNpwpAttribute($value)
    {
        $attribute_name = "npwp";
        $disk = "public";
        $destination_path = "empployee/npwp";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }
}
