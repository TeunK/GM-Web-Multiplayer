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

//get connection acknowledgement from server
function connection_ack(data) {
    messages.push(data);
}



/* SOCKET.IO AUXILLARY FUNCTIONALITY */

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
