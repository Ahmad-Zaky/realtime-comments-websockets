<x-app-layout>
    <x-slot name="header"></x-slot>

    @section('styles')
        <link rel="stylesheet" href="{{ mix('css/helper.css') }}">
        <link rel="stylesheet" href="{{ mix('css/chat.css') }}">
    @endsection

    <section id="section-chat" class="d-flex flex-col justify-between align-center card mx-auto h-80">

        <nav id="nav-online" class="w-100 d-flex">

            <h3 class="white pl-1">Chat</h3>

            <div id="avatars"></div>

        </nav>

        <ul id="list-messages" class="px-1 py-2 d-flex flex-col"></ul>

        <form id="form" class="w-100 d-flex flex-col">

            <span class="pl-1" id="span-typing"></span>

            <input
                id="input-message"
                class="py-2 pl-1"
                placeholder="Type a message"
                type="text"
            >

        </form>

    </section>
    @section('scripts')
        <script src="{{ mix('js/app.js') }}"></script>

        <script>
            
            const authUser = {{ Js::from(auth()->user()->only(["id", "name", "email"])) }};
            const form = document.getElementById('form');
            const inputMessage = document.getElementById('input-message');
            const listMessages = document.getElementById('list-messages');
            const avatars = document.getElementById('avatars');
            const spanTyping = document.getElementById('span-typing');
            var onlineUsers = [];

            onSubmit();
            onTypingMessage();

            /**
             * Presence WS Connection 
             */
            const channel = Echo.join(`presence.chat.1`);

            channel.here((users) => {
                onlineUsers = [...users]
                renderAvatars();
                console.log(users);
                console.log("Subscribed");
            })
            .joining((user) => {
                onlineUsers.push(user);
                renderAvatars();
                addChatMessage(user.name, "has joined the room !");

                console.log(user, "Joined");
            })
            .leaving((user) => {
                onlineUsers = onlineUsers.filter((onlineUser) => onlineUser.id !== user.id);
                renderAvatars();
                addChatMessage(user.name, "has left the room.", "grey");

                console.log(user, "Left");
            })
            .listen(".new-message", (event) => {
                console.log(event);
                addChatMessage(event.user.name,     event.message);
            })
            .listenForWhisper("typing", (event) => {
                if (event.typing)
                    typing(`${event.email} is typing ...`);
                    
                else stopTyping();
            });

            function onSubmit() {
                form.addEventListener('submit', (event) => {
                    event.preventDefault();
    
                    const userInput = inputMessage.value;
                    axios.post('/chat-message', {
                        message: userInput
                    });
    
                    inputMessage.value = "";
                });
            }

            function onTypingMessage() {
                inputMessage.addEventListener('input', (event) => {
                    
                    if (inputMessage.value.length === 0) {
                        channel.whisper('typing', { typeing: false });
                        return;
                    }
                    
                    channel.whisper('typing', {
                        email: authUser.email,
                        typing: true
                    });
                });
            }

            function addChatMessage(name, message, color = "black") {
                const li = document.createElement("li");
                li.classList.add('d-flex', 'flex-col');
                
                // Add the auther
                const autherSpan = addMessageAuthor(name);
                
                // Add the message
                const messageSpan = addMessage(message, color);
                
                li.append(autherSpan, messageSpan);
                listMessages.append(li);
            }

            function addMessageAuthor(name) {

                const autherSpan = document.createElement('span')
                autherSpan.classList.add('message-author');
                autherSpan.textContent = name;

                return autherSpan;
            }

            function addMessage(message, color="black") {

                const messageSpan = document.createElement('span');
                messageSpan.textContent = message;
                messageSpan.style.color = color;
                
                return messageSpan
            }

            function renderAvatars() {
                avatars.textContent = "";
                onlineUsers.forEach(user => {
                    const avatarSpan = document.createElement('span')
                    avatarSpan.classList.add('avatar', 'mx-1');
                    avatarSpan.textContent = userNameInitials(user.name);
                    avatars.append(avatarSpan);
                });
            }

            function userNameInitials(name) {
                const nameParts = name.split(' ');

                return nameParts.map((name) => name[0]).join("").toUpperCase();
            }

            function typing(message) {
                spanTyping.textContent = message;
            }

            function stopTyping(message) {
                spanTyping.textContent = "";
            }
        </script>
    @endsection
</x-app-layout>
