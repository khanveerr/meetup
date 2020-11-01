<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */

    // Let's clear the users table first
    


    public function run()
    {
        //
        User::truncate();

        $faker = \Faker\Factory::create();

        // Let's make sure everyone has the same password and 
        // let's hash it before the loop, or else our seeder 
        // will be too slow.
        $password = Hash::make('tanveer');

        User::create([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => $password,
        ]);
    }
}
