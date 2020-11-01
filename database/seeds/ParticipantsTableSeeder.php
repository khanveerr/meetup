<?php

use Illuminate\Database\Seeder;
use App\Participant;

class ParticipantsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Truncate our existing records to start from scratch.
        Participant::truncate();

        $faker = \Faker\Factory::create();

        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 50; $i++) {
            Participant::create([
                'name' => $faker->name,
                'age' => $faker->numberBetween(1,99),
                'dob' => now(),
                'profession' => $faker->randomElement($array = array ('Employed','Student')),
                'locality' => $faker->city,
                'no_of_guests' => $faker->numberBetween(0,2),
                'address' => $faker->address
            ]);
        }

    }
}
