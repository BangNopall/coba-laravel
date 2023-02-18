<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Athar Naufal',
            'username' => 'nopal',
            'email' => 'athar@gmail.com',
            'password' => bcrypt('12345')
        ]);

        // User::create([
        //     'name' => 'Dito Wahyudi',
        //     'email' => 'dito@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);
        User::factory(3)->create();
        
        Post::factory(20)->create();

        Category::create([
            'name' => 'Web Programing',
            'slug' => 'web-programing'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore repellendus totam nemo numquam impedit! Autem optio delectus minima similique. Impedit, asperiores similique ab quis odio natus iure, accusantium animi maiores molestias perferendis optio. Aliquam numquam consequuntur magni obcaecati aut rerum magnam non, dolor',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore repellendus totam nemo numquam impedit! Autem optio delectus minima similique. Impedit, asperiores similique ab quis odio natus iure, accusantium animi maiores molestias perferendis optio. Aliquam numquam consequuntur magni obcaecati aut rerum magnam non, dolor laudantium sapiente aspernatur quaerat sed, quasi illum cum dolorem nisi corrupti quam quibusdam facilis id repellendus deleniti. Dolore odit nemo harum velit porro reiciendis facere totam ipsum ab, voluptatem quisquam quam nobis fugiat aliquid! Quo facere commodi accusamus quisquam, voluptatibus odio veritatis aliquid fuga velit. Vel, expedita. Quis, aliquam dignissimos maiores eaque voluptatum delectus omnis quasi commodi.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-Ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore repellendus totam nemo numquam impedit! Autem optio delectus minima similique. Impedit, asperiores similique ab quis odio natus iure, accusantium animi maiores molestias perferendis optio. Aliquam numquam consequuntur magni obcaecati aut rerum magnam non, dolor',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore repellendus totam nemo numquam impedit! Autem optio delectus minima similique. Impedit, asperiores similique ab quis odio natus iure, accusantium animi maiores molestias perferendis optio. Aliquam numquam consequuntur magni obcaecati aut rerum magnam non, dolor laudantium sapiente aspernatur quaerat sed, quasi illum cum dolorem nisi corrupti quam quibusdam facilis id repellendus deleniti. Dolore odit nemo harum velit porro reiciendis facere totam ipsum ab, voluptatem quisquam quam nobis fugiat aliquid! Quo facere commodi accusamus quisquam, voluptatibus odio veritatis aliquid fuga velit. Vel, expedita. Quis, aliquam dignissimos maiores eaque voluptatum delectus omnis quasi commodi.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore repellendus totam nemo numquam impedit! Autem optio delectus minima similique. Impedit, asperiores similique ab quis odio natus iure, accusantium animi maiores molestias perferendis optio. Aliquam numquam consequuntur magni obcaecati aut rerum magnam non, dolor',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore repellendus totam nemo numquam impedit! Autem optio delectus minima similique. Impedit, asperiores similique ab quis odio natus iure, accusantium animi maiores molestias perferendis optio. Aliquam numquam consequuntur magni obcaecati aut rerum magnam non, dolor laudantium sapiente aspernatur quaerat sed, quasi illum cum dolorem nisi corrupti quam quibusdam facilis id repellendus deleniti. Dolore odit nemo harum velit porro reiciendis facere totam ipsum ab, voluptatem quisquam quam nobis fugiat aliquid! Quo facere commodi accusamus quisquam, voluptatibus odio veritatis aliquid fuga velit. Vel, expedita. Quis, aliquam dignissimos maiores eaque voluptatum delectus omnis quasi commodi.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore repellendus totam nemo numquam impedit! Autem optio delectus minima similique. Impedit, asperiores similique ab quis odio natus iure, accusantium animi maiores molestias perferendis optio. Aliquam numquam consequuntur magni obcaecati aut rerum magnam non, dolor',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore repellendus totam nemo numquam impedit! Autem optio delectus minima similique. Impedit, asperiores similique ab quis odio natus iure, accusantium animi maiores molestias perferendis optio. Aliquam numquam consequuntur magni obcaecati aut rerum magnam non, dolor laudantium sapiente aspernatur quaerat sed, quasi illum cum dolorem nisi corrupti quam quibusdam facilis id repellendus deleniti. Dolore odit nemo harum velit porro reiciendis facere totam ipsum ab, voluptatem quisquam quam nobis fugiat aliquid! Quo facere commodi accusamus quisquam, voluptatibus odio veritatis aliquid fuga velit. Vel, expedita. Quis, aliquam dignissimos maiores eaque voluptatum delectus omnis quasi commodi.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
