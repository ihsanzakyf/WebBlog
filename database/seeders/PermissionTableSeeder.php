<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use App\Models\User;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $authorities = config('permission.authorities');

        $listPermission = [];
        $superAdminPermission = [];
        $adminPermission = [];
        $editorPermission = [];

        foreach ($authorities as $label => $permission) {
            foreach ($permission as $permission) {
                $listPermission[] = [
                    'name'       => $permission,
                    'guard_name'      => 'web',
                    'created_at' => date('Y-m-d H:i:s'),
                    'updated_at' => date('Y-m-d H:i:s'),
                ];
                // superAdmin
                $superAdminPermission[] = $permission;
                // Admin
                if (in_array($label, ['manage_posts', 'manage_categories', 'manage_tags'])) {
                    $adminPermission[] = $permission;
                }
                // Editor
                if (in_array($label, ['manage_posts'])) {
                    $editorPermission[] = $permission;
                }
            }
        }

        // Insert Permission
        Permission::insert($listPermission);

        // Insert Roles

        // superAdmin
        $superAdmin = Role::create([
            'name'       => "superAdmin",
            'guard_name' => 'web',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);

        // admin
        $admin = Role::create([
            'name'       => "Admin",
            'guard_name' => 'web',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);

        // editor
        $editor = Role::create([
            'name'       => "Editor",
            'guard_name' => 'web',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);

        // Role -> Permission
        $superAdmin->givePermissionTo($superAdminPermission);
        $admin->givePermissionTo($adminPermission);
        $editor->givePermissionTo($editorPermission);

        // 

        $userSuperAdmin = User::find(1)->assignRole("SuperAdmin");
    }
}
