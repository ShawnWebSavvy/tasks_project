<?php

namespace App\Policies;

use App\Models\Task;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class TaskPolicy
{
    public function create(User $user)
    {
        return $user->isAdmin();
    }

    public function update(User $user, Task $task)
    {
        return $user->isAdmin() || $user->id === $task->assigned_to;
    }

    public function delete(User $user, Task $task)
    {
        return $user->isAdmin() || $user->id === $task->assigned_to;
    }

    public function viewArchive(User $user)
    {
        return $user->isAdmin();
    }

    public function reopenArchive(User $user)
    {
        return $user->isAdmin();
    }
}
