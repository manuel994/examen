<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UserSeeder::class);
        $this->call(EstatusSeeder::class);
        $this->call(PuestosSeeder::class);
        $this->call(EmpleadosSeeder::class);
        $this->call(UsersSeeder::class);
    }
}
