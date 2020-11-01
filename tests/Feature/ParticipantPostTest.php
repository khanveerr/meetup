<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;
use App\User;
use App\Participant;

class ParticipantPostTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testsParticipantCreatedSuccessfully()
    {
        $payload = [
            "name" => "Tanveer",
            "age"  => 31,
            "dob"  => "1989-05-18",
            "profession"  => "Employed",
            "locality" => "Mumbai",
            "no_of_guests" => 2,
            "address" => "Andheri East"
        ];

        $user = factory(User::class)->create(['email' => 'user@test.com']);
        $token = $user->generateToken();
        $headers = ['Authorization' => "Bearer $token"];

        $this->json('post', '/api/participants', $payload, $headers)
            ->assertStatus(201)
            ->assertJsonStructure([
                'data' => [
                    'name',
                    'age',
                    'dob',
                    'profession',
                    'locality',
                    'no_of_guests',
                    'address',
                    'updated_at',
                    'created_at',
                    'id'
                ],
            ]);;
    }

    public function testsAllRequireData()
    {
        $user = factory(User::class)->create(['email' => 'user@test.com']);
        $token = $user->generateToken();
        $headers = ['Authorization' => "Bearer $token"];

        $this->json('post', '/api/participants', [], $headers)
            ->assertStatus(400)
            ->assertJson([
                "errors" => [
                    "name" => [
                        "The name field is required."
                    ],
                    "age" => [
                        "The age field is required."
                    ],
                    "dob" => [
                        "The dob field is required."
                    ],
                    "profession" => [
                        "The profession field is required."
                    ],
                    "no_of_guests" => [
                        "The no of guests field is required."
                    ]
                ]
            ]);
    }


    public function testsInvalidProfession()
    {
        $payload = [
            "name" => "Tanveer",
            "age" => 31,
            "dob" => "1989-05-18",
            "profession" => "Employed123",
            "locality" => "Mumbai",
            "no_of_guests" => 2,
            "address" => "Andheri East"
        ];

        $user = factory(User::class)->create(['email' => 'user@test.com']);
        $token = $user->generateToken();
        $headers = ['Authorization' => "Bearer $token"];

        $this->json('post', '/api/participants', $payload, $headers)
            ->assertStatus(400)
            ->assertJson([
                "errors" => [
                    "profession" => [
                        "The selected profession is invalid."
                    ]
                ]
            ]);
    }

    public function testsMoreThenTwoGuests()
    {
        $payload = [
            "name" => "Tanveer",
            "age" => 31,
            "dob" => "1989-05-18",
            "profession" => "Employed",
            "locality" => "Mumbai",
            "no_of_guests" => 5,
            "address" => "Andheri East"
        ];

        $user = factory(User::class)->create(['email' => 'user@test.com']);
        $token = $user->generateToken();
        $headers = ['Authorization' => "Bearer $token"];

        $this->json('post', '/api/participants', $payload, $headers)
            ->assertStatus(400)
            ->assertJson([
                "errors" => [
                    "no_of_guests" => [
                        "The no of guests must be between 0 and 2."
                    ]
                ]
            ]);
    }


    public function testsParticipantUpdatedSuccessfully()
    {
        $payload = [
            "name" => "Tanveer",
            "age"  => 31,
            "dob"  => "1989-05-18",
            "profession"  => "Employed",
            "locality" => "Mumbai",
            "no_of_guests" => 2,
            "address" => "Andheri East"
        ];

        $user = factory(User::class)->create(['email' => 'user@test.com']);
        $token = $user->generateToken();
        $headers = ['Authorization' => "Bearer $token"];

        $participant = factory(Participant::class)->create($payload);

        $this->json('put', '/api/participants/'.$participant->id, $payload, $headers)
            ->assertStatus(200)
            ->assertJsonStructure([
                'data' => [
                    'name',
                    'age',
                    'dob',
                    'profession',
                    'locality',
                    'no_of_guests',
                    'address',
                    'updated_at',
                    'created_at',
                    'id'
                ],
            ]);
    }


    public function testsGetParticipantDetailsById()
    {
        $payload = [
            "name" => "Tanveer",
            "age"  => 31,
            "dob"  => "1989-05-18",
            "profession"  => "Employed",
            "locality" => "Mumbai",
            "no_of_guests" => 2,
            "address" => "Andheri East"
        ];

        $user = factory(User::class)->create(['email' => 'user@test.com']);
        $token = $user->generateToken();
        $headers = ['Authorization' => "Bearer $token"];

        $participant = factory(Participant::class)->create($payload);

        $this->json('get', '/api/participants/'.$participant->id, [], $headers)
            ->assertStatus(200)
            ->assertJsonStructure([
                'data' => [
                    'name',
                    'age',
                    'dob',
                    'profession',
                    'locality',
                    'no_of_guests',
                    'address',
                    'updated_at',
                    'created_at',
                    'id'
                ],
            ]);
    }


}
