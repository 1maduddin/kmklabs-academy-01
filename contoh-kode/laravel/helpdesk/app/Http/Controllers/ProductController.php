<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Product;

use Session;
use Log;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $allProducts = Product::all();
       return view('product.index', [
            'products' => $allProducts
       ]); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       return view('product.create'); 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($request->hasFile('photo')){
            $f = $request->file('photo');
            $nama = $f->getClientOriginalName();
            $ukuran = $f->getClientSize();

            $tujuan = public_path('images');
            $file_tujuan = uniqid().".".$f->getClientOriginalExtension();

            Log::debug("Nama file : $nama");
            Log::debug("Ukuran file : $ukuran");
            Log::debug("Lokasi penyimpanan : $tujuan/$file_tujuan");

        
            $f->move($tujuan, $file_tujuan);

        }

        $this->validate($request, [
            'code' => 'required|min:3|max:5',
            'name' => 'required'
        ]);
        Product::create($request->all());
        return redirect()->route('product.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

       $p = Product::findOrFail($id);
       return view('product.edit')->with('product', $p); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $p = Product::findOrFail($id);
        $this->validate($request, [
            'code' => 'required|min:3|max:5',
            'name' => 'required'
        ]);
        $p->fill($request->all())->save();
        Session::flash('flash_message', "Product berhasil disimpan");
        return redirect()->route('product.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
