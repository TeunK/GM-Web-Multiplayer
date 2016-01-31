var GLOBAL      = require('./global.js');
var MESSAGES    = require('./messages.js');
var http        = require('http');
var server      = http.createServer(feedback_page);
var io          = require('socket.io').listen(server);

server.listen(GLOBAL.port);



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

    var socket_id = socket;
    var client_data = {
        client_id : controller.clients.length,
        socket_id : socket_id
    };
    controller.clients.push(client_data);

    // reply to client with it's new client_id
    initial_reply(client_data);

    console.log("Sent ACK to client, assigned-ID: "+client_data.client_id);

    // handle incoming messages from clients
    client_data.socket_id.on('message', function(data) {
        requestsHandled++;

        // store data into buffer
        buffer      = data;
        //read the message type
        messageid   = bufferread();

        var msg_type;
        console.log("DETAILS: "+controller);
        console.log("CLIENTS: "+controller.clients.length);

        switch (messageid) {
            case MESSAGES['C2S'].initial_client_details:
                /* RECEIVE CLIENT obj_id AND USERNAME -> FORWARD DATA TO ALL CLIENTS ON NETWORK */

                // Client sends it's initial details, store these
                obj_client_name = bufferread();

                // update all clients with new client's arrival
                msg_type = MESSAGES['S2C'].send_client_name;
                clearbuffer();
                bufferwrite(msg_type);
                bufferwrite(obj_client_name);
                broadcast();
                break;


            case MESSAGES['C2S'].client_disconnects:
                /* RECEIVE CLIENT DISCONNECT NOTIFICATION -> FORWARD LEAVING CLIENT_ID TO ALL CLIENTS */

                // Receive client_id of the client that is leaving
                var obj_client_name = bufferread();
                //remove client data from list of clients
                controller.clients.splice(client_data, 1);

                console.log("CLIENT DISCONNECTED:" + obj_client_name);

                // Warn user that client_id has left
                msg_type = MESSAGES['S2C'].client_disconnected;
                clearbuffer();
                bufferwrite(msg_type);
                bufferwrite(obj_client_name);
                broadcast();
                break;

            case MESSAGES['C2S'].chat_message:
                /* RECEIVE CHAT MESSAGE -> FORWARD MESSAGE TO ALL CLIENTS */

                //load message
                var user            = bufferread();
                var chat_message    = bufferread();

                //spread message
                msg_type = MESSAGES['S2C'].chat_message;
                clearbuffer();
                bufferwrite(msg_type);
                bufferwrite(user);
                bufferwrite(chat_message);
                broadcast();
                break;

            case MESSAGES['C2S'].ping:
                /* RECEIVE CHAT MESSAGE -> FORWARD MESSAGE TO ALL CLIENTS */

                // Client sends it's initial details
                var obj_client_name = bufferread();
                //load message
                var ping_sendtime   = bufferread();

                //return message
                msg_type = MESSAGES['S2C'].ping;
                clearbuffer();
                bufferwrite(msg_type);
                bufferwrite(obj_client_name);
                bufferwrite(ping_sendtime);
                sendmessage(socket_id);
                break;

            case MESSAGES['C2S'].client_count:
                //return message
                msg_type = MESSAGES['S2C'].client_count;

                clearbuffer();
                bufferwrite(msg_type);
                bufferwrite("any");
                bufferwrite(controller.clients.length);
                sendmessage(socket_id);
                break;

            case MESSAGES['C2S'].request_count:
                var now = new Date().getTime();
                var timediff = (now - starttime)/1000;
                var avg_requests = Math.round(requestsHandled / timediff);

                msg_type = MESSAGES['S2C'].request_count;
                clearbuffer();
                bufferwrite(msg_type);
                bufferwrite("any");
                bufferwrite(avg_requests);
                sendmessage(socket_id);
                break;

            case MESSAGES['C2S'].new_virtual_client:
                var obj_client_name = bufferread();

                //add client name to array if not yet registered
                if (controller.clients.indexOf(obj_client_name) == -1) {
                    controller.clients.push(client_id+"."+obj_client_name);
                }

                break;

            case MESSAGES['C2S'].remove_virtual_client:
                var obj_client_name = bufferread();

                //remove virtual client from array if registered
                var index = controller.clients.indexOf(client_id+"."+obj_client_name);
                if (index > -1) {
                    controller.clients.splice(index, 1);
                }

                break;

            case MESSAGES['C2S'].update_user:
                var client_id       = bufferread();
                var client_name     = bufferread();
                var client_spriteID = bufferread();
                var client_x        = bufferread();
                var client_y        = bufferread();
                var client_hp       = bufferread();
                var client_str      = bufferread();

                msg_type = MESSAGES['S2C'].update_user;
                clearbuffer();
                bufferwrite(msg_type);
                bufferwrite(client_id);
                bufferwrite(client_name);
                bufferwrite(client_spriteID);
                bufferwrite(client_x);
                bufferwrite(client_y);
                bufferwrite(client_hp);
                bufferwrite(client_str);
                broadcast();

                break;
        }
    });
});

function initial_reply(client_data) {
    clearbuffer();
    bufferwrite(MESSAGES['S2C'].confirm_client_id);
    bufferwrite(client_data.client_id);
    sendmessage(client_data.socket_id);
}
function broadcast() {
    // send buffer-contents to ALL clients that are connected to the server
    for (var client in controller.clients) {
        if (client) {
            sendmessage(controller.clients[client].socket_id);
        }
    }
    clearbuffer();
}


/* SOCKET AND BUFFER FUNCTIONS */

//init buffer
var buffer = [];

//buffer clear
function clearbuffer() {
    buffer = [];
}
function bufferwrite(value) {
    buffer.push(value);
}
function bufferread(value) {
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
function feedback_page(req,res)
{
    //Write index page response to confirm server is executing
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write(
        "<h1>"+GLOBAL.project_name+"</h1>" +
        "<br/>" +
        "Success! The server is currently running at "+GLOBAL.host+":"+GLOBAL.port
    );
    res.end();
}