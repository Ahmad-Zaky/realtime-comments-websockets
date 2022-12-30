<?php

namespace App\Events;

use App\Models\Comment;
use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Contracts\Broadcasting\ShouldBroadcastNow;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class NewComment implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $comment;

    public $post;

    public $user;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct(Comment $comment)
    {
        $this->comment = $comment;

        $this->post = optional($this->comment)->post;

        $this->user = optional($this->comment)->user;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new Channel('post.'. $this->post->id);
    }

    public function broadcastWith() 
    {
        return [
            "body" => $this->comment->body,
            "created_at" => $this->comment->created_at->toFormattedDateString(),
            "user" => [
                "id" => $this->user->id,
                "name" => $this->user->name,
                "avatar" => $this->user->avatar ?? "http://placeimg.com/50/50",
            ]
        ];
    }
}
