<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'title', 'text',
    ];

    /**
    * The author that belong to the role.
    */
    public function author()
    {
        return $this->belongsToMany('App\User', 'articles_users', 'article_id', 'user_id');
    }
}
