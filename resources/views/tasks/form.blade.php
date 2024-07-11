<div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" id="title" name="title" value="{{ old('title', $task->title ?? '') }}" required>
</div>
<div class="form-group">
    <label for="description">Description</label>
    <textarea class="form-control" id="description" name="description" required>{{ old('description', $task->description ?? '') }}</textarea>
</div>
<div class="form-group">
    <label for="due_date">Due Date</label>
    <input type="date" class="form-control" id="due_date" name="due_date" value="{{ old('due_date', $task->due_date ?? '') }}" required>
</div>
<div class="form-group">
    <label for="status_id">Select Status</label>
    <select class="form-control" id="status_id" name="status_id" required>
        @foreach($statuses as $status)
            <option value="{{ $status->id }}" {{ old('status_id', $task->status_id ?? '') == $status->id ? 'selected' : '' }}>{{ $status->status }}</option>
        @endforeach
    </select>
</div>
<div class="form-group">
    <label for="assigned_to">Assigne To</label>
    <select class="form-control" id="assigned_to" name="assigned_to" required>
        @foreach($users as $user)
            <option value="{{ $user->id }}" {{ old('assigned_to', $task->assigned_to ?? '') == $user->id ? 'selected' : '' }}>{{ $user->name }}</option>
        @endforeach
    </select>
</div>