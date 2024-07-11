<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('archivetasks', function (Blueprint $table) {
            /*
            $table->id();
            $table->foreignId('task_id')->constrained();
            $table->text('title');
            $table->text('description')->nullable();
            $table->date('due_date');
            $table->foreignId('created_by')->constrained('users')->onDelete('cascade');
            $table->foreignId('assigned_to')->nullable()->constrained('users')->onDelete('set null');
            $table->timestamps();
            $table->timestamp('archived_at')->nullable();
            */
            $table->id();
            $table->unsignedBigInteger('task_id');
            $table->text('title');
            $table->text('description')->nullable();
            $table->date('due_date');
            $table->foreignId('created_by')->constrained('users')->onDelete('cascade');
            $table->foreignId('assigned_to')->nullable()->constrained('users')->onDelete('set null');
            $table->timestamps();
            $table->timestamp('archived_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('archivetasks');
    }
};
