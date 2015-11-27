@extends('layouts.aplikasi') 
@section('title', 'Product List')

@section('content')
        
        <h1>Product List</h1>


        <a href="{{ route('product.create') }}">Add New Product</a>
    
        <table class="table table-striped table-condensed table-bordered">
        
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
        
            <tbody>
                @foreach($products as $p)
                <tr>
                    <td>{{ $p->code }}</td>
                    <td>{{ $p->name}}</td>
                    <td>{{ $p->description }}</td>
                    <td>
                      <a href="{{ route('product.edit', ['id' => $p->id]) }}">edit</a>
                      <a href="{{ route('product.destroy', ['id' => $p->id])
                      }}">delete</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    
@endsection
