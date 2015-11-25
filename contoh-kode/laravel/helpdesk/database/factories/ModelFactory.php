<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\User::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->email,
        'password' => bcrypt(str_random(10)),
        'remember_token' => str_random(10),
    ];
});

$factory->define(App\Product::class, function(Faker\Generator $f){
    return [
        'code' => $f->numerify("P-###"),
        'name' => $f->numerify("Product ###"),
        'description' => $f->sentence($nbWords = 3)
    ];
});

$factory->define(App\Problem::class, function(Faker\Generator $f){
    return [
        'title' => $f->sentence($nbWords = 2),
        'description' => $f->paragraph($nbSentences = 3),
        'user_id' => factory(App\User::class)->create()->id,
        'product_id' => factory(App\Product::class)->create()->id,
    ];
});
