<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Quote extends Model
{
    protected $fillable = ['id','customer_email', 'customer_phone', 'customer_name', 'customer_country','quote_link', 'quote_name','quote_color_size','quote_qty','count','status','photo'];

    public $timestamps = true;

}
