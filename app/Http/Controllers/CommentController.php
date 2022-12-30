<?php

namespace App\Http\Controllers;

use App\Events\NewComment;
use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \App\Models\Post  $psot
     * @return \Illuminate\Http\Response
     */
    public function index(Post $post)
    {
        return response()->json(
            $post->comments()
            ->with('user')
            ->latest()
            ->get()
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Models\Post  $post
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Post $post, Request $request)
    {
        $validated = $request->validate([
            'body' => 'required|string',
        ]);

        $comment = $post->comments()->create([
            "body" => $validated['body'] ?? "",
            "user_id" => Auth::id(),
        ]);

        $comment = Comment::with("user")->findOrFail($comment->id);
        
        broadcast(new NewComment($comment))->toOthers();

        return response()->json($comment);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
