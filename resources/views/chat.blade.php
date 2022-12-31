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
            const form = document.getElementById('form');
            const inputMessage = document.getElementById('input-message');
            const listMessages = document.getElementById('list-messages');

            form.addEventListener('submit', (event) => {
                event.preventDefault();

                const userInput = inputMessage.value;
                axios.post('/chat-message', {
                    message: userInput
                });

                inputMessage.value = "";
            });

            const channel = Echo.private(`private.chat.1`);

            channel.subscribed(() => {
                console.log("Subscribed");
            }).listen(".new-message", (event) => {
                console.log(event);
                addChatMessage(event.message, event.user.name);
            });

            function addChatMessage(message, name) {
                const li = document.createElement("li");
                li.classList.add('d-flex', 'flex-col');
                
                // Add the auther
                const autherSpan = addMessageAuthor(name);
                
                // Add the message
                const messageSpan = addMessage(message);
                
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

        </script>
    @endsection
</x-app-layout>
