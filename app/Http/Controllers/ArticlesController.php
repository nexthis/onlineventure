<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Article;
use Carbon\Carbon;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ArticlesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Article::with('author')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //https://laravel.com/docs/8.x/validation#form-request-validation if reused or longer  
        $this->validate($request, [
            'title' => 'required',
            'text' => 'required',
        ]);

        $article = Article::create([
            'title' => $request->title,
            'text' => $request->text,
        ]);
        $article->author()->attach(Auth::id());
        return response()->json($article->load('author'));
    }

    /**
     * Display the specified resource.
     *
     * @param  number  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $article =  Article::with('author')->find($id);
        if ($article === null)
            return response()->json(["error" => "article not found"]);

        return response()->json($article);
    }

    /**
     * Display the specified resource by user nickname.
     *
     * @param  string  $name
     * @return \Illuminate\Http\Response
     */
    public function showByName($name)
    {
        $user =  User::where('nickname', '=', $name)->first();

        if ($user === null)
            return response()->json(["error" => "article not found"]);

        return response()->json($user->article->load('author'));
    }

    /**
     * Display the specified resource
     *
     * @param  string  $name
     * @return \Illuminate\Http\Response
     */
    public function topOfTheWeek()
    {
        $date = Carbon::today()->subDays(7);

        $top = DB::table("articles_users")
            ->where('created_at', '>=', explode(' ', $date))
            ->groupBy('user_id')
            ->selectRaw('articles_users.*, count(articles_users.user_id) as score')
            ->orderBy('score', 'desc')
            ->take(3)
            ->get();
        $ids = $top->map(function ($item) {
            return $item->user_id;
        })->toArray();
        return response()->json(User::whereIn('id', $ids)->get());
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        //https://laravel.com/docs/8.x/validation#form-request-validation if reused or longer  
        $this->validate($request, [
            'title' => 'required',
            'text' => 'required',
            'id' => 'required',
        ]);
        $article =  Article::find($request->id);
        $article->title = $request->title;
        $article->text = $request->text;
        if(!$article->author->contains(Auth::id())){
            $article->author()->attach(Auth::id());
        }
        $article->save();
        return response()->json($article->load('author'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  number  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $article =  Article::find($id);
        $article->author()->detach();
        $article->delete();
        return response()->json($article->load('author'));
    }
}
