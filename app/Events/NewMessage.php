<?php

namespace App\Events;

use App\Models\User;
use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class NewMessage implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public string $message;

    public $user;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct(string $message, User $user)
    {
        $this->message = $message;

        $this->user = $user;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new PrivateChannel('private.chat.1');
    }
    
    /**
     * Get the Custom Event Name
     */
    public function broadcastAs() 
    {
        return 'new-message';
    }

    /**
     * Get the data to broadcast.
     */
    public function broadcastWith() 
    {
        return [
            "message" => $this->message,
            "user" => $this->user->only(["name", "email"]),
        ];
    }
}
