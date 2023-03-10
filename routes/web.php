<?php

use App\Events\NewMessage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use BeyondCode\LaravelWebSockets\Facades\WebSocketsRouter;
use App\Websockets\SocketHandler\UpdatePostSocketHandler;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/chatbox', function () {
    return view('chat');
})->middleware(['auth'])->name('chat');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('/posts', 'PostController');

Route::post('/chat-message', function (Request $request){
    event(new NewMessage($request->message, auth()->user()));
    
    return null;
});

WebSocketsRouter::webSocket('/socket/update-post', UpdatePostSocketHandler::class);
