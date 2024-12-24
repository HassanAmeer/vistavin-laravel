<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <script src="https://js.pusher.com/8.2.0/pusher.min.js"></script>
    <script>
    try {
        Pusher.logToConsole = true;
        var pusher = new Pusher('4e512126a627fac5dc3f', {
            cluster: 'ap2'
        });
        var urlParams = new URLSearchParams(window.location.search);
        var uid = urlParams.get('uid') || "empty";

        var channel = pusher.subscribe('chat-channel');
        channel.bind('chat-event', function(resp) {
            const data = JSON.parse(JSON.stringify(resp.msg));
            if (data.sid == uid) {
                const message = `<div class="message received usermsgbox">
                                        ${data.msg}
                                        <span id="random"></span>
                                        <span class="metadata"><span class="time"> ${new Date(data.created_at).toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true })} </span></span>
                                    </div>`;
                $('.conversation-container').append(message);
                $('.conversation-container').scrollTop($('.conversation-container')[0].scrollHeight);
            }
        });
    } catch (error) {
        alert(error);
    }
    </script>
    <!-- push -->


    <style>
    *,
    *:before,
    *:after {
        box-sizing: inherit;
    }

    html {
        box-sizing: border-box;
        height: 100%;
        margin: 0;
        padding: 0;
    }

    body {
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        font-family: "Roboto", sans-serif;
        margin: 0;
        padding: 0;
        height: 100%;
    }

    .page {
        width: 100%;
        height: 100%;
        /* display: flex; */
        align-items: center;
        justify-content: center;
    }

    .marvel-device .screen {
        text-align: left;
    }

    .screen-container {
        height: 100%;
    }

    /* Status Bar */

    .status-bar {
        height: 25px;
        background: #340082FF;
        /* background: #004e45; */
        color: #fff;
        font-size: 14px;
        padding: 0 8px;
    }

    .status-bar:after {
        content: "";
        display: table;
        clear: both;
    }

    .status-bar div {
        float: right;
        position: relative;
        top: 50%;
        transform: translateY(-50%);
        margin: 0 0 0 8px;
        font-weight: 600;
    }

    /* Chat */

    .chat {
        height: calc(100% - 69px);
    }

    .chat-container {
        height: 100%;
    }

    /* User Bar */

    .user-bar {
        height: 55px;
        background: #4900AFFF;
        /* background: #005e54; */
        color: #fff;
        padding: 0 8px;
        font-size: 24px;
        position: relative;
        z-index: 1;
    }

    .user-bar:after {
        content: "";
        display: table;
        clear: both;
    }

    .user-bar div {
        float: left;
        transform: translateY(-50%);
        position: relative;
        top: 50%;
    }

    .user-bar .actions {
        float: right;
        margin: 0 0 0 10px;
    }

    .user-bar .actions.more {
        margin: 0 0px 0 2px;
    }

    .user-bar .actions.attachment {
        margin: 0 0 0 30px;
    }

    .user-bar .actions.attachment i {
        display: block;
        transform: rotate(-45deg);
    }

    .user-bar .avatar {
        margin: 0 0 0 5px;
        width: 36px;
        height: 36px;
    }

    .user-bar .avatar img {
        border-radius: 50%;
        box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1);
        display: block;
        width: 100%;
    }

    .user-bar .name {
        font-size: 17px;
        font-weight: 600;
        text-overflow: ellipsis;
        letter-spacing: 0.3px;
        margin: 0 0 0 8px;
        overflow: hidden;
        white-space: nowrap;
        width: 200px;
    }

    .user-bar .status {
        display: block;
        font-size: 13px;
        font-weight: 400;
        letter-spacing: 0;
    }

    /* Conversation */

    .conversation {
        height: calc(100% - 12px);
        position: relative;
        background: #efe7dd url("https://cloud.githubusercontent.com/assets/398893/15136779/4e765036-1639-11e6-9201-67e728e86f39.jpg") repeat;
        z-index: 0;
    }

    .conversation ::-webkit-scrollbar {
        transition: all .5s;
        width: 5px;
        height: 1px;
        z-index: 10;
    }

    .conversation ::-webkit-scrollbar-track {
        background: transparent;
    }

    .conversation ::-webkit-scrollbar-thumb {
        background: #b3ada7;
    }

    .conversation .conversation-container {
        height: calc(100% - 68px);
        box-shadow: inset 0 10px 10px -10px #000000;
        overflow-x: hidden;
        padding: 0 16px;
        margin-bottom: 5px;
    }

    .conversation .conversation-container:after {
        content: "";
        display: table;
        clear: both;
    }

    /* Messages */

    .message {
        color: #000;
        clear: both;
        line-height: 18px;
        font-size: 15px;
        padding: 8px;
        position: relative;
        margin: 8px 0;
        max-width: 85%;
        word-wrap: break-word;
        z-index: -1;
    }

    .message:after {
        position: absolute;
        content: "";
        width: 0;
        height: 0;
        border-style: solid;
    }

    .metadata {
        display: inline-block;
        float: right;
        padding: 0 0 0 7px;
        position: relative;
        bottom: -4px;
    }

    .metadata .time {
        color: rgba(0, 0, 0, .45);
        font-size: 11px;
        display: inline-block;
    }

    .metadata .tick {
        display: inline-block;
        margin-left: 2px;
        position: relative;
        top: 4px;
        height: 16px;
        width: 16px;
    }

    .metadata .tick svg {
        position: absolute;
        transition: .5s ease-in-out;
    }

    .metadata .tick svg:first-child {
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -webkit-transform: perspective(800px) rotateY(180deg);
        transform: perspective(800px) rotateY(180deg);
    }

    .metadata .tick svg:last-child {
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -webkit-transform: perspective(800px) rotateY(0deg);
        transform: perspective(800px) rotateY(0deg);
    }

    .metadata .tick-animation svg:first-child {
        -webkit-transform: perspective(800px) rotateY(0);
        transform: perspective(800px) rotateY(0);
    }

    .metadata .tick-animation svg:last-child {
        -webkit-transform: perspective(800px) rotateY(-179.9deg);
        transform: perspective(800px) rotateY(-179.9deg);
    }

    .message:first-child {
        margin: 16px 0 8px;
    }

    .message.received {
        background: #fff;
        border-radius: 0px 5px 5px 5px;
        float: left;
    }

    .message.received .metadata {
        padding: 0 0 0 16px;
    }

    .message.received:after {
        border-width: 0px 10px 10px 0;
        border-color: transparent #fff transparent transparent;
        top: 0;
        left: -10px;
    }

    .message.sent {
        background: #CFC7FFFF;
        /* background: #e1ffc7; */
        border-radius: 5px 0px 5px 5px;
        float: right;
    }

    .message.sent:after {
        border-width: 0px 0 10px 10px;
        border-color: transparent transparent transparent #C391F1FF;
        top: 0;
        right: -10px;
    }

    /* Compose */

    .conversation-compose {
        display: flex;
        flex-direction: row;
        align-items: flex-end;
        overflow: hidden;
        height: 50px;
        width: 100%;
        z-index: 2;
    }

    .conversation-compose div,
    .conversation-compose input {
        background: #fff;
        height: 100%;
    }

    .conversation-compose .emoji {
        display: flex;
        align-items: center;
        justify-content: center;
        background: white;
        border-radius: 5px 0 0 5px;
        flex: 0 0 auto;
        margin-left: 8px;
        width: 48px;
    }

    .conversation-compose .input-msg {
        border: 0;
        border-radius: 0 20px 20px 0;
        flex: 1 1 auto;
        font-size: 16px;
        margin: 0;
        outline: none;
        min-width: 50px;
    }
    </style>
    <!-- body start -->
    <div class="page" style="background-color: #456264FF">
        <div class="marvel-device nexus5">
            <div class=" top-bar"></div>
            <div class="sleep"></div>
            <div class="volume"></div>
            <div class="camera"></div>
            <div class="screen" style="height:100vh;">
                <div class="screen-container">
                    <div class=" status-bar">
                        <div class="time"></div>
                        <div class="battery">
                            <i class="zmdi zmdi-battery"></i>
                        </div>
                        <div class="network">
                            <i class="zmdi zmdi-network"></i>
                        </div>
                        <div class="wifi">
                            <i class="zmdi zmdi-wifi-alt-2"></i>
                        </div>
                        <div class="star">
                            <i class="zmdi zmdi-star"></i>
                        </div>
                    </div>
                    <div class="chat">
                        <div class="chat-container">
                            <div class="user-bar">
                                <div class="back">
                                    <i class="zmdi zmdi-arrow-left"></i>
                                </div>
                                <div class="avatar">
                                    <img src="{{asset('assets/user.png')}}" alt="Avatar">
                                </div>
                                <div class="name">
                                    <span>USER</span>
                                    <span class="status" id="deviceIdIs">Id: </span>
                                </div>
                                <div class="actions more" style="color:#8D8FFFD4; font-size:20px">
                                    <span class="time" id="time"></span>
                                    <i class="zmdi zmdi-more-vert"></i>

                                    <script>
                                    var d = new Date();
                                    document.getElementById("time").innerHTML = d.toLocaleTimeString();
                                    </script>
                                </div>
                                <div class="actions attachment">
                                    <i class="zmdi zmdi-attachment-alt"></i>
                                </div>
                                <div class="actions">
                                    <i class="zmdi zmdi-phone"></i>
                                </div>
                            </div>
                            <div class="conversation">
                                <div class="conversation-container">
                                    <!-- <div class="message sent adminmsgbox"> ..
                                        <span class="metadata">
                                            <span class="time">time</span><span class="tick"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="16" height="15"
                                                    id="msg-dblcheck-ack" x="2063" y="2076">
                                                    <path
                                                        d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.88a.32.32 0 0 1-.484.032l-.358-.325a.32.32 0 0 0-.484.032l-.378.48a.418.418 0 0 0 .036.54l1.32 1.267a.32.32 0 0 0 .484-.034l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.88a.32.32 0 0 1-.484.032L1.892 7.77a.366.366 0 0 0-.516.005l-.423.433a.364.364 0 0 0 .006.514l3.255 3.185a.32.32 0 0 0 .484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                                        fill="#4fc3f7" />
                                                </svg></span>
                                        </span>
                                    </div>
                                    <div class="message received usermsgbox">
                                        <span id="random"></span>
                                        <span class="metadata"><span class="time"> time </span></span>
                                    </div> -->
                                </div>
                                <form id="chatForm" class="conversation-compose">
                                    @csrf
                                    <div class="emoji">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" id="smiley"
                                            x="3147" y="3209">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M9.153 11.603c.795 0 1.44-.88 1.44-1.962s-.645-1.96-1.44-1.96c-.795 0-1.44.88-1.44 1.96s.645 1.965 1.44 1.965zM5.95 12.965c-.027-.307-.132 5.218 6.062 5.55 6.066-.25 6.066-5.55 6.066-5.55-6.078 1.416-12.13 0-12.13 0zm11.362 1.108s-.67 1.96-5.05 1.96c-3.506 0-5.39-1.165-5.608-1.96 0 0 5.912 1.055 10.658 0zM11.804 1.01C5.61 1.01.978 6.034.978 12.23s4.826 10.76 11.02 10.76S23.02 18.424 23.02 12.23c0-6.197-5.02-11.22-11.216-11.22zM12 21.355c-5.273 0-9.38-3.886-9.38-9.16 0-5.272 3.94-9.547 9.214-9.547a9.548 9.548 0 0 1 9.548 9.548c0 5.272-4.11 9.16-9.382 9.16zm3.108-9.75c.795 0 1.44-.88 1.44-1.963s-.645-1.96-1.44-1.96c-.795 0-1.44.878-1.44 1.96s.645 1.963 1.44 1.963z"
                                                fill="#7d8489" />
                                        </svg>
                                    </div>
                                    <input id="messageInput" name="msg" class=" input-msg" name="input"
                                        placeholder="Type a message" autocomplete="off" autofocus></input>
                                    <div class="photo">
                                        <i class="zmdi zmdi-camera"></i>
                                    </div>
                                    <style>
                                    .sendBtn {
                                        color: #9FA1FFFF;
                                        opacity: 0.7;
                                        border: none;
                                        transform: translateX(-50px);
                                    }

                                    .sendBtn img:hover {
                                        color: #5759C4FF;
                                        cursor: pointer;
                                        transition: color 0.3s ease-in-out;
                                        transform: scale(1.2);
                                    }
                                    </style>
                                    <button type="submit" id="sendButton" class="btn send sendBtn"
                                        style="border-radius: 50%; padding-left:5px; padding-right:5px; overflow-hidden;">

                                        <img src="{{ asset('assets/send.png') }}"
                                            style="width:2.5em; height:2.5em; transform:scale(1.5);" />

                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- body end -->
</body>
<script>
/* Meme */

var memes = [
    'Dude, you smashed my turtle saying "I\'M MARIO BROS!"',
    'Dude, you grabed seven oranges and yelled "I GOT THE DRAGON BALLS!"',
    'Dude, you threw my hamster across the room and said "PIKACHU I CHOOSE YOU!"',
    'Dude, you congratulated a potato for getting a part in Toy Story',
    'Dude, you were hugging an old man with a beard screaming "DUMBLEDORE YOU\'RE ALIVE!"',
    'Dude, you were cutting all my pinapples yelling "SPONGEBOB! I KNOW YOU\'RE THERE!"',
];

var random = document.querySelector('#random');

random.innerHTML = memes[Math.floor(Math.random() * memes.length)];

/* Time */

var deviceTime = document.querySelector('.status-bar .time');
var messageTime = document.querySelectorAll('.message .time');

deviceTime.innerHTML = moment().format('h:mm');

setInterval(function() {
    deviceTime.innerHTML = moment().format('h:mm');
}, 1000);

for (var i = 0; i < messageTime.length; i++) {
    messageTime[i].innerHTML = moment().format('h:mm A');
}

/* Message */

var form = document.querySelector('.conversation-compose');
var conversation = document.querySelector('.conversation-container');

form.addEventListener('submit', newMessage);

function newMessage(e) {
    var input = e.target.input;

    if (input.value) {
        var message = buildMessage(input.value);
        conversation.appendChild(message);
        animateMessage(message);
    }

    input.value = '';
    conversation.scrollTop = conversation.scrollHeight;

    e.preventDefault();
}

function buildMessage(text) {
    var element = document.createElement('div');

    element.classList.add('message', 'sent');

    element.innerHTML = text +
        '<span class="metadata">' +
        '<span class="time">' + moment().format('h:mm A') + '</span>' +
        '<span class="tick tick-animation">' +
        '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="15" id="msg-dblcheck" x="2047" y="2061"><path d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.88a.32.32 0 0 1-.484.032l-.358-.325a.32.32 0 0 0-.484.032l-.378.48a.418.418 0 0 0 .036.54l1.32 1.267a.32.32 0 0 0 .484-.034l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.88a.32.32 0 0 1-.484.032L1.892 7.77a.366.366 0 0 0-.516.005l-.423.433a.364.364 0 0 0 .006.514l3.255 3.185a.32.32 0 0 0 .484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z" fill="#92a58c"/></svg>' +
        '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="15" id="msg-dblcheck-ack" x="2063" y="2076"><path d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.88a.32.32 0 0 1-.484.032l-.358-.325a.32.32 0 0 0-.484.032l-.378.48a.418.418 0 0 0 .036.54l1.32 1.267a.32.32 0 0 0 .484-.034l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.88a.32.32 0 0 1-.484.032L1.892 7.77a.366.366 0 0 0-.516.005l-.423.433a.364.364 0 0 0 .006.514l3.255 3.185a.32.32 0 0 0 .484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z" fill="#4fc3f7"/></svg>' +
        '</span>' +
        '</span>';

    return element;
}

function animateMessage(message) {
    setTimeout(function() {
        var tick = message.querySelector('.tick');
        tick.classList.remove('tick-animation');
    }, 1500);
}
</script>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
$(document).ready(function() {
    $('.chatButton').click(function() {
        $('#chatPopup').toggle(); // Show or hide the popup
    });

    $('#closePopup').click(function() {
        $('#chatPopup').hide(); // Hide the popup
    });

    $(document).click(function(event) {
        if (!$(event.target).closest('#chatPopup, .chatButton').length) {
            $('#chatPopup').hide();
        }
    });
});
</script>

<script>
$(document).ready(function() {
    getChats();
});
</script>
<script>
var urlParams = new URLSearchParams(window.location.search);
var uid = urlParams.get('uid') || "empty";
document.getElementById('deviceIdIs').textContent = uid;

function getChats() {
    $.ajax({
        type: "POST",
        url: "{{ route('getchats') }}",
        data: {
            "_token": "{{ csrf_token() }}",
            "sid": uid,
        },
        success: function(resp) {
            // alert(resp);
            $.each(resp.result, function(index, value) {
                // alert(value.msg);
                var newMessage;
                if (value.sid === uid) {
                    newMessage = `<div class="message received usermsgbox">
                                        ${value.msg}
                                        <span id="random"></span>
                                        <span class="metadata"><span class="time"> ${new Date(value.created_at).toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true })} </span></span>
                                    </div>`;
                } else {
                    newMessage = `<div class="message sent adminmsgbox"> ${value.msg}
                                        <span class="metadata">
                                            <span class="time">${new Date(value.created_at).toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true })} </span><span class="tick"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="16" height="15"
                                                    id="msg-dblcheck-ack" x="2063" y="2076">
                                                    <path
                                                        d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.88a.32.32 0 0 1-.484.032l-.358-.325a.32.32 0 0 0-.484.032l-.378.48a.418.418 0 0 0 .036.54l1.32 1.267a.32.32 0 0 0 .484-.034l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.88a.32.32 0 0 1-.484.032L1.892 7.77a.366.366 0 0 0-.516.005l-.423.433a.364.364 0 0 0 .006.514l3.255 3.185a.32.32 0 0 0 .484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                                        fill="#4fc3f7" />
                                                </svg></span>
                                        </span>
                                    </div>`;
                }

                $('.conversation-container').append(newMessage);
                $('.conversation-container').scrollTop($('.conversation-container')[0]
                    .scrollHeight);
            });
        },
        error: function(resp) {
            // console.error(resp);
            let errorMessage = "Something went wrong";
            if (resp.responseJSON && resp.responseJSON.errors) {
                errorMessage = Object.values(resp.responseJSON.errors).join(
                    '');
            } else if (resp.responseJSON && resp.responseJSON.error) {
                errorMessage = Object.values(resp.responseJSON.error).join(
                    '');
            }

            toastr.error(errorMessage, 'Error', {
                positionClass: 'toast-top-right',
                timeOut: 5000
            });

        }
    });
}
</script>
<script>
document.getElementById('chatForm').addEventListener('submit', function(e) {
    e.preventDefault();
    if ($('#messageInput').val().trim() == "") {
        return false;
    }

    var urlParams = new URLSearchParams(window.location.search);
    var uid = urlParams.get('uid') || "empty";

    var formData = new FormData(this);
    formData.append('rid', uid);
    formData.append('sid', 'admin');

    var newMessage = `<div class="message sent adminmsgbox"> ${$('#messageInput').val()}
                                        <span class="metadata">
                                            <span class="time"> Now </span><span class="tick"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="16" height="15"
                                                    id="msg-dblcheck-ack" x="2063" y="2076">
                                                    <path
                                                        d="M15.01 3.316l-.478-.372a.365.365 0 0 0-.51.063L8.666 9.88a.32.32 0 0 1-.484.032l-.358-.325a.32.32 0 0 0-.484.032l-.378.48a.418.418 0 0 0 .036.54l1.32 1.267a.32.32 0 0 0 .484-.034l6.272-8.048a.366.366 0 0 0-.064-.512zm-4.1 0l-.478-.372a.365.365 0 0 0-.51.063L4.566 9.88a.32.32 0 0 1-.484.032L1.892 7.77a.366.366 0 0 0-.516.005l-.423.433a.364.364 0 0 0 .006.514l3.255 3.185a.32.32 0 0 0 .484-.033l6.272-8.048a.365.365 0 0 0-.063-.51z"
                                                        fill="#4fc3f7" />
                                                </svg></span>
                                        </span>
                                    </div>`;
    $('.conversation-container').append(newMessage);
    $('.conversation-container').scrollTop($('.conversation-container')[0].scrollHeight);

    $.ajax({
        type: "POST",
        url: "{{ route('sendmsg') }}",
        data: formData,
        contentType: false,
        processData: false,
        success: function(resp) {
            $('#messageInput').val('');
        },
        error: function(resp) {
            console.error(resp);
            let errorMessage = "Something went wrong";
            if (resp.responseJSON && resp.responseJSON.errors) {
                errorMessage = Object.values(resp.responseJSON.errors).join(
                    '');
            }
            toastr.error(errorMessage, 'Error', {
                positionClass: 'toast-top-right',
                timeOut: 5000
            });

        }
    });
});
</script>

</html>