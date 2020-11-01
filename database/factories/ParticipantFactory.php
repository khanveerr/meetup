<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\Participant::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'age' => $faker->numberBetween(1,99),
        'dob' => now(),
        'profession' => $faker->randomElement($array = array ('Employed','Student')),
        'locality' => $faker->city,
        'no_of_guests' => $faker->numberBetween(0,2),
        'address' => $faker->address
    ];
});
