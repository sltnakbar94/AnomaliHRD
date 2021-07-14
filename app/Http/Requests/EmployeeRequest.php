<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;
use Illuminate\Foundation\Http\FormRequest;

class EmployeeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // only allow updates if the user is logged in
        return backpack_auth()->check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'defaultdeptid' => 'required',
            'name' => 'required',
            'SN' => 'required',
            'cv' => 'mimes:jpg,jpeg,bmp,png,svg,pdf',
            'ktp' => 'mimes:jpg,jpeg,bmp,png,svg,pdf',
            'ijazah' => 'mimes:jpg,jpeg,bmp,png,svg,pdf',
            'kk' => 'mimes:jpg,jpeg,bmp,png,svg,pdf',
            'npwp' => 'mimes:jpg,jpeg,bmp,png,svg,pdf',
            // 'submission_form' => 'mimes:jpg,jpeg,bmp,png,svg,pdf',
            // 'kesehatan' => 'mimes:jpg,jpeg,bmp,png,svg,pdf',
            // 'ketenagakerjaan' => 'mimes:jpg,jpeg,bmp,png,svg,pdf',
        ];
    }

    /**
     * Get the validation attributes that apply to the request.
     *
     * @return array
     */
    public function attributes()
    {
        return [
            //
        ];
    }

    /**
     * Get the validation messages that apply to the request.
     *
     * @return array
     */
    public function messages()
    {
        return [
            //
        ];
    }
}
