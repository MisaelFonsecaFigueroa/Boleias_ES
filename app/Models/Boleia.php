<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\User;
use Carbon\Carbon;

class Boleia extends Model
{
    use HasFactory, SoftDeletes;

    //protected $dates = ['date'];

    protected $fillable = [
        'origem',
        'destino',
        'paragens',
        'lugares',
        'idiomas',
        'preco',
        'carro',
        'user_id',
        'date',
    ];

    /*public function setDateAttribute($value){
        $this->attributes['date'] = Carbon::createFromFormat('d/m/Y', $value)->format('Y-m-d');
    }

    public function getDateAttribute(){
        return Carbon::createFromFormat('d/m/Y', $this->attributes['date'])->format('d-m-Y');
    }*/

    public function user(){
        return $this->belongsTo(User::class);
    }
}
