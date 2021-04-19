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
    protected $casts = [
        'sertifikasi' => 'array'
    ];
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
    public function scopeActive($query)
    {
        return $query->where('active', 1);
    }

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

    public function setSubmissionFormAttribute($value)
    {
        $attribute_name = "submission_form";
        $disk = "public";
        $destination_path = "empployee/submission_form";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    public function setKesehatanAttribute($value)
    {
        $attribute_name = "kesehatan";
        $disk = "public";
        $destination_path = "empployee/bpjs/kesehatan";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    public function setKetenagakerjaanAttribute($value)
    {
        $attribute_name = "ketenagakerjaan";
        $disk = "public";
        $destination_path = "empployee/bpjs/ketenagakerjaan";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    public function setSertifikasiAttribute($value)
    {
        $attribute_name = "sertifikasi";
        $disk = "public";
        $destination_path = "empployee/sertifikasi";

        $this->uploadMultipleFilesToDisk($value, $attribute_name, $disk, $destination_path);
    }
}
