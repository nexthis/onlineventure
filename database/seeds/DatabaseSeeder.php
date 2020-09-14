<?php

use App\User;
use App\Article;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;



class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call('UsersTableSeeder');
        factory(User::class,5 )->create();
        factory(Article::class,30 )->create();
        for ($i = 0; $i < 30; $i++) {
            DB::table('articles_users')->insert([
                'user_id' => User::all()->random()->id,
                'article_id' => Article::all()->random()->id,
                'created_at' => date('Y-m-d H:i:s', strtotime( '+'.mt_rand(0,30).' days')),
                'updated_at' => date('Y-m-d H:i:s', strtotime( '+'.mt_rand(0,30).' days'))
            ]);
        }
    }
}
