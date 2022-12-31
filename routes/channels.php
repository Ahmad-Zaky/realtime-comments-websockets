<?php

use Illuminate\Support\Facades\Broadcast;

/*
|--------------------------------------------------------------------------
| Broadcast Channels
|--------------------------------------------------------------------------
|
| Here you may register all of the event broadcasting channels that your
| application supports. The given channel authorization callbacks are
| used to check if an authenticated user can listen to the channel.
|
*/

Broadcast::channel('App.Models.User.{id}', function ($user, $id) {
    return (int) $user->id === (int) $id;
});

Broadcast::channel('post.{id}', function ($user, $id) {
    return true;
    
    // Only Author of the Post can connect to the channel
    // return $user->id === optional(\App\Models\Post::find($id))->id;
});

Broadcast::channel('private.chat.{id}', function ($user, $id) {
    return true;
});

Broadcast::channel('presence.chat.{id}', function ($user, $id) {
    return [
        'id' => $user->id,
        'name' => $user->name,
        'email' => $user->email,
        'avatar' => $user->avatar ?? "http://placeimg.com/50/50",
    ];
});
