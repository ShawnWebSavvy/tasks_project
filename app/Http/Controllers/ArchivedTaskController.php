<?php

namespace App\Http\Controllers;

use App\Models\ArchivedTask;
use App\Models\Task;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ArchivedTaskController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        #$this->authorize('viewArchive', Auth::user());
        $archivedTasks = ArchivedTask::orderBy('archived_at', 'desc')->paginate(10);
        return view('archive.index', compact('archivedTasks'));
    }

    public function reopen(ArchivedTask $archivedTask)
    {
        #$this->authorize('reopenArchive', Auth::user());
        $task = Task::create([
            'title' => $archivedTask->title,
            'description' => $archivedTask->description,
            'due_date' => $archivedTask->due_date,
            'status_id' => '6',
            'created_by' => $archivedTask->created_by,
            'assigned_to' => $archivedTask->assigned_to,
        ]);

        // Delete the archived task
        $archivedTask->delete();

        return redirect()->route('archive.index')->with('success', 'Task reopened successfully.');
    }
}
