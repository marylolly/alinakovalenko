<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\feedback;

class FeedbackController extends Controller
{
    public function getIndex(){
		$feeds=feedback::where('showhide','show')->OrderBy('id','DESC')->paginate(20);
		return view ('feedback',compact('feeds'));
	}
}
