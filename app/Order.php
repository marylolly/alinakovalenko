<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable=[
	'name',
	'body',
	'user_id',
	'email',
	'phone',
	'fio',
	'type',
	'city',
	'address',
	'region',
	'index',
	'comment',
	'status'
	];
}
