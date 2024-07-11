<?php

namespace App\Http\Controllers;

use App\Models\ArchiveTask;
use App\Models\Task;
use Illuminate\Http\Request;

class ArchiveController extends Controller
{
    public function __construct()
    {
        #$this->middleware('auth');
    }

    public function index()
    {
        $archivedTask = ArchiveTask::orderBy('archived_at', 'desc')->paginate(10);
        return view('archive.index', compact('archivedTasks'));
    }

    

    public function reopen(ArchivedTask $archivedTask)
    {
        // Recreate the task in the tasks table
        $task = Task::create([
            'title' => $archivedTask->title,
            'description' => $archivedTask->description,
            'due_date' => $archivedTask->due_date,
            'status_id' => $archivedTask->status_id,
            'created_by' => $archivedTask->created_by,
            'assigned_to' => $archivedTask->assigned_to,
        ]);

        // Delete the archived task
        $archivedTask->delete();

        return redirect()->route('archive.index')->with('success', 'Task reopened successfully.');
    }
}
