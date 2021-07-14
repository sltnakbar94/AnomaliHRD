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
            'cv' => 'mimes:jpeg,bmp,png,svg,pdf',
            'ktp' => 'mimes:jpeg,bmp,png,svg,pdf',
            'ijazah' => 'mimes:jpeg,bmp,png,svg,pdf',
            'kk' => 'mimes:jpeg,bmp,png,svg,pdf',
            'npwp' => 'mimes:jpeg,bmp,png,svg,pdf',
            // 'submission_form' => 'mimes:jpeg,bmp,png,svg,pdf',
            // 'kesehatan' => 'mimes:jpeg,bmp,png,svg,pdf',
            // 'ketenagakerjaan' => 'mimes:jpeg,bmp,png,svg,pdf',
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
