<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Task;
use App\Models\Status;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        
        User::factory()->create([
            'name' => 'Base',
            'surname'=> 'Cloud',
            'email' => 'base@cloud.com',
            'password' => '123qweasd',
            'role' => 'admin'
        ]);
        User::factory()->create([
            'name' => 'Shawn',
            'surname'=> 'Whelan',
            'email' => 'shawn@websavvy.co.za',
            'password' => '123qweasd',
            'role' => 'admin'
        ]);
        User::factory()->create([
            'name' => 'Grant',
            'surname'=> 'Surname',
            'email' => 'grant@websavvy.co.za',
            'password' => '123qweasd',
            'role' => 'user'
        ]);
        User::factory()->create([
            'name' => 'Mark',
            'surname'=> 'Surname',
            'email' => 'mark@websavvy.co.za',
            'password' => '123qweasd',
            'role' => 'user'
        ]);
        User::factory()->create([
            'name' => 'Paul',
            'surname'=> 'Surname',
            'email' => 'paul@websavvy.co.za',
            'password' => '123qweasd',
            'role' => 'user'
        ]);
        User::factory(3)->create();

        Status::factory()->create([
            'id' => '1',
            'Status' => 'Created',
        ]);
        Status::factory()->create([
            'id' => '2',
            'Status' => 'Closed',
        ]);
        Status::factory()->create([
            'id' => '3',
            'Status' => 'In Progress',
        ]);
        Status::factory()->create([
            'id' => '4',
            'Status' => 'Reassigned',
        ]);
        Status::factory()->create([
            'id' => '5',
            'Status' => 'Pending Client',
        ]);
        Status::factory()->create([
            'id' => '6',
            'Status' => 'Pending Internal',
        ]);
        Status::factory()->create([
            'id' => '7',
            'Status' => 'Re-Opened',
        ]);

        Task::factory(30)->create();
    }
}
