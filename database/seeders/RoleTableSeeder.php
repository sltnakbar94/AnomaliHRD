<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Seeder;

class RoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = Role::create([
            'name' => 'admin'
        ]);

        $hrd = Role::create([
            'name' => 'hrd'
        ]);

        $staff = Role::create([
            'name' => 'staff'
        ]);
    }
}
