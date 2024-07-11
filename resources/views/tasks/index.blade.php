@extends('layouts.app')

@section('content')
<div class="container">
    <div class="container">
        <div class="row">
                <div class="col">
            <h1>Tasks</h1>
            </div>
            <div class="col" class="float-right">
                @if (Auth::user()->isAdmin())
                    <a href="{{ route('tasks.create') }}" class="float-right btn btn-success" >Create Tasks</a>
                @endif
            </div>
        </div>
    </div>
    
    <table class="table">
        <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Due Date</th>
                <th>Status</th>
                <th>Created By</th>
                <th>Assigned To</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($tasks as $task)
            <tr>
                <td>{{ $task->title }}</td>
                <td>{{ $task->description }}</td>
                <td>{{ $task->due_date }}</td>
                <td>{{ $task->status->status }}</td>
                <td>{{ $task->creator->name }}</td>
                <td>{{ $task->assignee->name }}</td>
                <td>
                    <a href="{{ route('tasks.edit', $task) }}" class="btn btn-primary">Edit</a>
                    <form action="{{ route('tasks.destroy', $task) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{ $tasks->links() }}
</div>
@endsection