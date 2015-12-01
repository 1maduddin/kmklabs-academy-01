@extends('layouts.aplikasi') 
@section('title', 'Problem List')

@section('content')
        
        <h1>Problem List</h1>


        <a href="{{ route('problem.create') }}">Add New Problem</a>
    
    
@endsection
