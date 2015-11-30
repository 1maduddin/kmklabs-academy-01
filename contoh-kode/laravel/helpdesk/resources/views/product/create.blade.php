@extends('layouts.aplikasi')
@section('title', 'Create New Product')

@section('content')

<h1>Create New Product</h1>


{!! Form::open([
    'route' => 'product.store'
]) !!}

<div class="form-group">
    {!! Form::label('code', 'Code:', ['class' => 'control-label']) !!}
    {!! Form::text('code', null, ['class' => 'form-control']) !!}
</div>

<div class="form-group">
    {!! Form::label('name', 'Name:', ['class' => 'control-label']) !!}
    {!! Form::text('name', null, ['class' => 'form-control']) !!}
</div>

<div class="form-group">
    {!! Form::label('description', 'Description:', ['class' => 'control-label']) !!}
    {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
</div>

{!! Form::submit('Create New Product', ['class' => 'btn btn-primary']) !!}
{!! Form::close() !!}

@endsection
