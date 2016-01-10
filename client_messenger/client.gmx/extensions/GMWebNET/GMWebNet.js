/**
 * Created by Teun on 08/10/2015.
 */



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
function disconnect(socket) {
    // todo: send disconnection message to server before disconnecting socket
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

//buffer write types
function write_short(value) {
    buffer.push(value);
}
function write_ushort(value) {
    buffer.push(value);
}
function write_int(value) {
    buffer.push(value);
}
function write_uint(value) {
    buffer.push(value);
}
function write_float(value) {
    buffer.push(value);
}
function write_double(value) {
    buffer.push(value);
}
function write_chars(value) {
    buffer.push(value);
}
function write_byte(value) {
    buffer.push(value);
}
function write_string(value) {
    buffer.push(value);
}

//buffer reads
function read_short() {
    return buffer.shift();
}
function read_string() {
    return buffer.shift();
}
function read_byte() {
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


