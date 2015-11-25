<?php

use Illuminate\Database\Seeder;

class ProblemsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
	$product = factory(App\Product::class)->create();
        $problems = factory(App\Problem::class, 3)->create(
            ['product_id' => $product->id]
        );
    }
}
