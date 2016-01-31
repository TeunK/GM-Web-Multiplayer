var address;

//host/server address
//address = 192.168.1.134 //get_string("Multiplayer Host Address:", "127.0.0.1");
//address = get_string("Multiplayer Host Address:", "chatserver.rendonan.com");
address = "81.170.218.152";
global.address = "81.170.218.152";


socket = socket_create();
socket_connect(socket, address, 39072);

global.chatbuffer = buffer_create();

buffer_clear(global.chatbuffer);
buffer_write_uint8(global.chatbuffer, 2);
buffer_write_string(global.chatbuffer, username);
socket_write_message(socket, global.chatbuffer);

chat_init();

chatconnected = false;