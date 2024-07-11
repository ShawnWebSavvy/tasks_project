<?php

namespace App\Http\Controllers;
use App\Models\Task;
use App\Models\Status;
use App\Models\User;
use App\Models\ArchivedTask;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Facades\DB;

class TaskController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $tasks = Task::with(['status', 'creator', 'assignee'])->paginate(10);
        return view('tasks.index', compact('tasks'));
    }

    public function create()
    {
        $this->authorize('create', Task::class);
        $statuses = Status::all();
        $users = User::all();
        return view('tasks.create', compact('statuses', 'users'));
    }

    public function store(Request $request)
    {
        $this->authorize('create', Task::class);
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'due_date' => 'required|date',
            'status_id' => 'required|exists:statuses,id',
            'assigned_to' => 'required|exists:users,id',
        ]);

        $task = Task::create([
            'title' => $request->title,
            'description' => $request->description,
            'due_date' => $request->due_date,
            'status_id' => $request->status_id,
            'created_by' => Auth::id(),
            'assigned_to' => $request->assigned_to,
        ]);

        return redirect()->route('tasks.index');
    }

    public function show(Task $task)
    {
        return view('tasks.show', compact('task'));
    }

    public function edit(Task $task)
    {
        $this->authorize('update', $task);
        $statuses = Status::all();
        $users = User::all();
        return view('tasks.edit', compact('task', 'statuses', 'users'));
    }

    public function update(Request $request, Task $task)
    {
        $this->authorize('update', $task);
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'due_date' => 'required|date',
            'status_id' => 'required|exists:statuses,id',
            'assigned_to' => 'required|exists:users,id',
        ]);

        $task->update($request->all());
        return redirect()->route('tasks.index');
    }

    public function destroy(Task $task)
    {
        $this->authorize('delete', $task);

        ArchivedTask::create([
            'task_id' => $task->id,
            'title' => $task->title,
            'description' => $task->description,
            'due_date' => $task->due_date,
            'status_id' => $task->status_id,
            'created_by' => $task->created_by,
            'assigned_to' => $task->assigned_to,
            'archived_at' => now(), // Timestamp when archived
        ]);

        #$task = Task::find($taskId);
        #$task->delete();
        DB::transaction(function () use ($task) {
            DB::delete('delete from tasks where id = ?', [$task->id]);
        });

        return redirect()->route('tasks.index')
        ->with('success', 'Task archived successfully.');
    }
/*
    public function archive()
    {
        #$archivedTasks = ArchivedTask::orderBy('archived_at', 'desc')->get();
        #return view('tasks.archive', compact('archivedTasks'));
        #return view('home');
        return view('home');
    }
        */
/*
    public function reopen(ArchivedTask $archivedTask)
{
    // Create a new task based on archived task details
    Task::create([
        'title' => $archivedTask->title,
        'description' => $archivedTask->description,
        'due_date' => $archivedTask->due_date,
        'status_id' => $archivedTask->status_id,
        'created_by' => $archivedTask->created_by,
        'assigned_to' => $archivedTask->assigned_to,
    ]);

    // Delete the archived task
    #$archivedTask->delete();

    return redirect()->route('tasks.index')
        ->with('success', 'Task reopened successfully.');
}
        */
}