<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Catalog;

class CatalogController extends Controller
{
    public function getIndex($id=null){
    	$obj=Catalog::find($id);
    	return view('catalog',compact('obj'));
    }
}
