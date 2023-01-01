<?php

namespace App\Websockets\SocketHandler;

use App\Models\Post;
use Ratchet\ConnectionInterface;
use Ratchet\RFC6455\Messaging\MessageInterface;
use Ratchet\WebSocket\MessageComponentInterface;

class UpdatePostSocketHandler extends BaseSocketHandler implements MessageComponentInterface
{

    public function onMessage(ConnectionInterface $connection, MessageInterface $msg)
    {
        $body = collect(json_decode($msg->getPayload(), true));
        
        $id = $body->get("id");
        $payload = $body->get("payload");
        
        if (! $post = Post::find($id)) {
            $connection->send(json_encode([
                "status" => "error",
                "message" => "Post not found",
                "payload" => null,
            ]));
        }

        // TODO: Update Post
        $post->update(["title" => $payload["title"]]);

        $connection->send(json_encode([
            "status" => "ok",
            "message" => "Post updated",
            "payload" => $post->getAttributes(),
        ]));
    }
}