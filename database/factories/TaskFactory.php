<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Task>
 */
class TaskFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => 'title',
            'description' => 'description',
            'due_date' => now(),
            'status_id' => '1',
            'created_by' => '1',
            'assigned_to' => '2'
        ];
    }
}
