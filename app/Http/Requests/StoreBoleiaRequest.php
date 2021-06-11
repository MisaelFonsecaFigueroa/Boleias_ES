<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Gate;

class StoreBoleiaRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return Gate::allows('task_access');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'origem'     => [
                'string',
                'required',
            ],
            'destino'    => [
                'required',
                'string',
            ],
            'paragens' => [
                'nullable',
                'string',
            ],
            'lugares'  => [
                'integer',
            ],
            'idiomas'    => [
                'required',
                'string',
            ],
            'preco'    => [
                'nullable',
                'between:1,99999999.99',
                'regex:/^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$/',

            ],
            'carro'    => [
                'string',
                'required',
            ],
            'date'    => [
                'required',
                'date_format:Y-m-d',

            ],
        ];
    }


}
