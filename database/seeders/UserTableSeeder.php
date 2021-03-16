<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = User::create([
            'name' => 'admin',
            'email' => 'admin@anomali.co.id',
            'password' => bcrypt('password'),
            'role' => 'admin'
        ]);

        $hrd = User::create([
            'name' => 'hrd',
            'email' => 'hrd@anomali.co.id',
            'password' => bcrypt('password'),
            'role' => 'hrd'
        ]);

        $staff = User::create([
            'name' => 'staff',
            'email' => 'staff@anomali.co.id',
            'password' => bcrypt('password'),
            'role' => 'staff'
        ]);
    }
}
