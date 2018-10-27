<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Test3;
use App\Http\Requests\CreateTest3Request;
use App\Http\Requests\UpdateTest3Request;
use Illuminate\Http\Request;



class Test3Controller extends Controller {

	/**
	 * Display a listing of test3
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $test3 = Test3::all();

		return view('admin.test3.index', compact('test3'));
	}

	/**
	 * Show the form for creating a new test3
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.test3.create');
	}

	/**
	 * Store a newly created test3 in storage.
	 *
     * @param CreateTest3Request|Request $request
	 */
	public function store(CreateTest3Request $request)
	{
	    
		Test3::create($request->all());

		return redirect()->route(config('quickadmin.route').'.test3.index');
	}

	/**
	 * Show the form for editing the specified test3.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$test3 = Test3::find($id);
	    
	    
		return view('admin.test3.edit', compact('test3'));
	}

	/**
	 * Update the specified test3 in storage.
     * @param UpdateTest3Request|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateTest3Request $request)
	{
		$test3 = Test3::findOrFail($id);

        

		$test3->update($request->all());

		return redirect()->route(config('quickadmin.route').'.test3.index');
	}

	/**
	 * Remove the specified test3 from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Test3::destroy($id);

		return redirect()->route(config('quickadmin.route').'.test3.index');
	}

    /**
     * Mass delete function from index page
     * @param Request $request
     *
     * @return mixed
     */
    public function massDelete(Request $request)
    {
        if ($request->get('toDelete') != 'mass') {
            $toDelete = json_decode($request->get('toDelete'));
            Test3::destroy($toDelete);
        } else {
            Test3::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.test3.index');
    }

}
