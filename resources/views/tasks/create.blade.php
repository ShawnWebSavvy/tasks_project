@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Create Task</h1>
    <form action="{{ route('tasks.store') }}" method="POST">
        @csrf
        @include('tasks.form')
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>
@endsection