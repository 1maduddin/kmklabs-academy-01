<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Problem extends Model
{
    protected $fillable = ["title", "description", "user_id", "product_id"];
    public function product(){
        return $this->belongsTo('App\Product');
    } 


    public function user(){
        return $this->belongsTo('App\User');
    } 
}
