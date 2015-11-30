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

var starttime = new Date().getTime();
var requestsHandled = 0;

// on new incoming connection-request..
io.sockets.on('connection', function(socket) {
    console.log("Incoming Connection Request..");
    requestsHandled++;

    // assign id to client
    var client_id = controller.clients.length;
    var socket_id = socket;
    var client_data = {
        client_id : client_id,
        socket_id : socket_id
    };
    controller.clients.push(client_data);

    // reply to client with it's new client_id
    clearbuffer();
    writebyte(MESSAGES['S2C'].confirm_client_id);
    writebyte(client_id);
    sendmessage(socket_id);
    console.log("Sent ACK to client, assigned-ID: "+client_id);

    // handle incoming messages from clients
    socket_id.on('message', function(data) {
        requestsHandled++;

        // store data into buffer
        buffer      = data;
        //read the message type
        messageid   = readbyte();

        var msg_type;
        console.log("DETAILS: "+controller);
        console.log("CLIENTS: "+controller.clients.length);

        switch (messageid) {
            case MESSAGES['C2S'].initial_client_details:
                /* RECEIVE CLIENT obj_id AND USERNAME -> FORWARD DATA TO ALL CLIENTS ON NETWORK */

                // Client sends it's initial details, store these
                obj_client_name = readstring();

                // update all clients with new client's arrival
                msg_type = MESSAGES['S2C'].send_client_name;
                clearbuffer();
                writebyte(msg_type);
                writestring(obj_client_name);
                send_all_clients();
                break;


            case MESSAGES['C2S'].client_disconnects:
                /* RECEIVE CLIENT DISCONNECT NOTIFICATION -> FORWARD LEAVING CLIENT_ID TO ALL CLIENTS */

                // Receive client_id of the client that is leaving
                var obj_client_name = readstring();
                //remove client data from list of clients
                controller.clients.splice(client_data, 1);

                console.log("CLIENT DISCONNECTED:" + obj_client_name);

                // Warn user that client_id has left
                msg_type = MESSAGES['S2C'].client_disconnected;
                clearbuffer();
                writebyte(msg_type);
                writeshort(obj_client_name);
                send_all_clients();
                break;

            case MESSAGES['C2S'].chat_message:
                /* RECEIVE CHAT MESSAGE -> FORWARD MESSAGE TO ALL CLIENTS */

                //load message
                var user            = readstring();
                var chat_message    = readstring();

                //spread message
                msg_type = MESSAGES['S2C'].chat_message;
                clearbuffer();
                writebyte(msg_type);
                writestring(user);
                writestring(chat_message);
                send_all_clients();
                break;

            case MESSAGES['C2S'].ping:
                /* RECEIVE CHAT MESSAGE -> FORWARD MESSAGE TO ALL CLIENTS */

                // Client sends it's initial details
                var obj_client_name = readstring();
                //load message
                var ping_sendtime   = readstring();

                //return message
                msg_type = MESSAGES['S2C'].ping;
                clearbuffer();
                writebyte(msg_type);
                writestring(obj_client_name);
                writestring(ping_sendtime);
                sendmessage(socket_id);
                break;

            case MESSAGES['C2S'].client_count:
                //return message
                msg_type = MESSAGES['S2C'].client_count;

                clearbuffer();
                writebyte(msg_type);
                writebyte("any");
                writebyte(controller.clients.length);
                sendmessage(socket_id);
                break;

            case MESSAGES['C2S'].request_count:
                var now = new Date().getTime();
                var timediff = (now - starttime)/1000;
                var avg_requests = Math.round(requestsHandled / timediff);

                msg_type = MESSAGES['S2C'].request_count;
                clearbuffer();
                writebyte(msg_type);
                writebyte("any");
                writebyte(avg_requests);
                sendmessage(socket_id);
                break;

            case MESSAGES['C2S'].new_virtual_client:
                var obj_client_name = readstring();

                //add client name to array if not yet registered
                if (controller.clients.indexOf(obj_client_name) == -1) {
                    controller.clients.push(client_id+"."+obj_client_name);
                }

                break;

            case MESSAGES['C2S'].remove_virtual_client:
                var obj_client_name = readstring();

                //remove virtual client from array if registered
                var index = controller.clients.indexOf(client_id+"."+obj_client_name);
                if (index > -1) {
                    controller.clients.splice(index, 1);
                }

                break;
        }
    });
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
    if (socket)
    {
        socket.emit("message", buffer);
    }
    else
    {
        console.log("SOCKET ERROR: "+socket);
    }
}


// server startup message in terminal window
console.log("Server started at "+GLOBAL.host+":"+GLOBAL.port);