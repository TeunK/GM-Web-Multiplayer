var sockets     = []; //init connected sockets
var buffer      = []; //init memory buffer
var messages    = []; //init messages for storage


//setup connection to server
function connect(server_ip, server_port) {
    var server_addr = server_ip + ":" + server_port;
    var socket = socket_connect(server_addr);
    syn_server(socket, "message", connection_ack);
    return socket;
}

//disconnect from server
function disconnect(socket, value) {
    /*socket to disconnect, value = "DISCONNECT" msg_id for server*/

    //send disconnection message to server before disconnecting socket
    clear_buffer();
    buffer_write(value);
    send_message(socket);

    //disconnect the socket and free memory
    if (socket) {
        socket.disconnect();
        delete socket;
    }
}

//send buffer content through specified socket
function send_message(socket) {
    if (socket) {
        socket.emit("message", buffer);
    }
}

//move last message into buffer, then return buffer size
function receive_message(socket) {
    if (messages.length == 0) {
        return 0;
    }
    else
    {
        buffer = messages.pop();
        return buffer.length;
    }
}

/* BUFFER FUNCTIONS */

//buffer clear
function clear_buffer() {
    buffer = [];
}
function buffer_write(value) {
    buffer.push(value);
}
function buffer_read() {
    return buffer.shift();
}





/* AUXILLARY FUNCTIONALITY */
// create new socket for connection between server_address (host) and return its reference
function socket_connect(host_addr) {
    var socket = io.connect(host_addr);
    sockets.push(socket);

    return socket
}

//send event request to server through socket
function syn_server(socket, event, callback) {
    if (socket)
    {
        socket.on(event, callback);
    }
}

//get connection acknowledgement from server
function connection_ack(data) {
    messages.push(data);
}


