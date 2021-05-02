<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Item extends Model
{
    //
    use SoftDeletes;
    protected $table = 'items';
    protected $guarded = [
        'id'
    ];
    protected $fillable = [
        'description',
        'code',
        'providerId',
        'price',
        'videoURL',
        'show',
        'showPrice'
    ];

    public function provider()
    {
        $this->belongsTo(Provider::class, 'id', 'providerId');
    }

}
