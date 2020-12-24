<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Unit;
use Auth;

class UnitController extends Controller
{
    public function view(){
       $data['allData'] = Unit::all();
       return view('backend.unit.view-unit', $data );
   }
   public function add(){
    return view('backend.unit.add-unit');
   }
   public function store(Request $request)
   {
       $this->validate($request, [
           //'usertype' => 'required',
           'name' => 'required',
       ]);
       $unit = new Unit();
       $unit->name = $request->name;
       $unit->created_by = Auth::user()->id;
       $unit->save();
       return redirect()->route('units.view')->with('success', 'Data Inserted Successfully.');

   }
   public function edit($id)
   {
       $editData = Unit::find($id);
       //dd($editData);
       return view('backend.unit.edit-unit', compact('editData'));
   }

   public function update(Request $request, $id)
   {
       $unit = Unit::find($id);
       $unit->name = $request->name;
       $unit->updated_by = Auth::user()->id;
       $unit->save();
       return redirect()->route('units.view')->with('success', 'Data Updated Successfully.');

   
   }
   public function destroy($id){
       $unit = Unit::find($id);
       $unit->delete();
       return redirect()->route('units.view')->with('success', 'Data Deleted Successfully.');
   }
}
