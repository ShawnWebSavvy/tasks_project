<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ArchivedTask extends Model
{
    use HasFactory;
    protected $table = 'archivetasks';
    protected $fillable = ['task_id', 'title', 'description', 'due_date', 'created_by', 'assigned_to'];
}
