<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Comment>
 */
class CommentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'comments' => $this->faker->text(200),
            'rating' => $this->faker->numberBetween(1, 5),
            'status' => 0,
            'product_id' => 1,
            'user_id' => $this->faker->numberBetween(3, 7),
        ];
    }
}
