<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class RegisterTest extends TestCase
{
    public function testsRegistersSuccessfully()
    {
        $payload = [
            'name' => 'John',
            'email' => 'john@meetup.com',
            'password' => 'meetup123',
            'password_confirmation' => 'meetup123',
        ];

        $this->json('post', '/api/register', $payload)
            ->assertStatus(201)
            ->assertJsonStructure([
                'data' => [
                    'id',
                    'name',
                    'email',
                    'created_at',
                    'updated_at',
                    'api_token',
                ],
            ]);;
    }

    public function testsRequiresPasswordEmailAndName()
    {
        $this->json('post', '/api/register')
            ->assertStatus(400)
            ->assertJson([
                "errors" => [
                    "name"=> [
                        "The name field is required."
                    ],
                    "email"=> [
                        "The email field is required."
                    ],
                    "password"=> [
                        "The password field is required."
                    ],
                    "password_confirmation"=> [
                        "The password confirmation field is required."
                    ]
                ]
            ]);
    }

    public function testsRequirePasswordConfirmation()
    {
        $payload = [
            'name' => 'John',
            'email' => 'john@meetup.com',
            'password' => 'meetup123',
        ];

        $this->json('post', '/api/register', $payload)
            ->assertStatus(400)
            ->assertJson([
                "errors" => [
                    "password" => [
                        "The password confirmation does not match."
                    ],
                    "password_confirmation" => [
                        "The password confirmation field is required."
                    ]
                ]
            ]);
    }
}
