@extends('layouts.aplikasi')
@section('title', 'Edit Problem')

@section('content')
<h1>Edit Problem</h1>

@if($errors->any())
    <div class="alert alert-danger">
        @foreach($errors->all() as $error)
            <p>{{ $error }}</p>
        @endforeach
    </div>
@endif

@endsection
