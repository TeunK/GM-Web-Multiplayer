var GLOBAL      = require('./global.js');
var MESSAGES    = require('./messages.js');
var http        = require('http');
var server      = http.createServer(feedback_page);
var io          = require('socket.io').listen(server);

server.listen(GLOBAL.port);

function feedback_page(req,res) {
    //Write index page response to confirm server is executing
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write(
        "<h1>"+GLOBAL.project_name+"</h1>" +
        "<br/>" +
        "Success! The server is currently running at "+GLOBAL.host+":"+GLOBAL.port
    );
    res.end();
}



/* Network Logic Handling */

// store all connected users as array
var controller={};
controller.clients = [];


// on new incoming connection-request..
io.sockets.on('connection', function(socket) {
    console.log("Incoming Connection Request..");

    // assign id to client
    var client_id = controller.clients.length;
    var socket_id = socket;
    controller.clients.push( {
        client_id : client_id,
        socket_id : socket_id
    });

    // reply to client with it's new client_id
    clearbuffer();
    writebyte(MESSAGES['S2C'].confirm_client_id);
    writebyte(client_id);
    sendmessage(socket_id);
    console.log("Sent ACK to client, assigned-ID: "+client_id);

    //// handle incoming messages from clients
    //socket_id.on('message', function(data) {
    //
    //    // store data into buffer
    //    buffer      = data;
    //    //read the message type
    //    messageid   = readbyte();
    //
    //    switch (messageid) {
    //        case MESSAGES['C2S'].initial_client_details:
    //            /* RECEIVE CLIENT obj_id AND USERNAME -> FORWARD DATA TO ALL CLIENTS ON NETWORK */
    //
    //            // Client sends it's initial details, store these
    //            obj_client_id   = readshort();
    //            obj_client_name = readstring();
    //
    //            // update all clients with new client's arrival
    //            var msg_type = MESSAGES['S2C'].send_client_name;
    //            clearbuffer();
    //            writebyte(msg_type);
    //            writeshort(obj_client_id);
    //            writestring(obj_client_name);
    //            send_all_clients();
    //            break;
    //
    //
    //        case MESSAGES['C2S'].client_disconnects:
    //            /* RECEIVE CLIENT DISCONNECT NOTIFICATION -> FORWARD LEAVING CLIENT_ID TO ALL CLIENTS */
    //
    //            // Receive client_id of the client that is leaving
    //            pid = readshort();
    //
    //            // Warn user that client_id has left
    //            var msg_type = MESSAGES['S2C'].client_disconnected;
    //            clearbuffer();
    //            writebyte(msg_type);
    //            writeshort(pid);
    //            send_all_clients();
    //            break;
    //    }
    //});
});

function send_all_clients() {
    // send buffer-contents to ALL clients that are connected to the server
    for (var client in controller.clients) {
        if (client) {
            sendmessage(controller.clients[client].socket_id);
        }
    }
}




/* SOCKET AND BUFFER FUNCTIONS */

//init buffer
var buffer = [];

//buffer clear
function clearbuffer() {
    buffer = [];
}

//buffer writes
function writeshort(value) {
    buffer.push(value);
}
function writebyte(value) {
    buffer.push(value);
}
function writestring(value) {
    buffer.push(value);
}

//buffer reads
function readshort() {
    return buffer.shift();
}
function readstring() {
    return buffer.shift();
}
function readbyte() {
    return buffer.shift();
}

//send buffer contents through socket
function sendmessage(socket) {
    socket.emit("message", buffer);
}


// server startup message in terminal window
console.log("Server started at "+GLOBAL.host+":"+GLOBAL.port);