var GLOBAL      = require('./global.js');
var MESSAGES    = require('./messages.js');
var http        = require('http');
var server      = http.createServer(feedback_page);
var io          = require('socket.io').listen(server);
io.set('log level', 1); // reduce debug logging

server.listen(GLOBAL.port);

// store all connected users as array of player instances
var controller={};
controller.clients = [];


/* CORE FUNCTIONALITY */
// on new incoming connection-request..
io.sockets.on('connection', function(client_socket) {

    //Create New Player Instance (and append to players list)
    var client_id = controller.clients.length;
    var obj_player = new Player(client_id, client_socket);
    controller.clients.push(obj_player);
    console.log((controller.clients.length).toString()+") client created");

    // handle incoming messages from clients
    client_socket.on('message', function(data) {
        buffer          = data;         //store data into the buffer
        message_code    = bufferread(); //read the message type
        action[message_code](obj_player);
    });
});




/* Network Logic Handling */
action = {};
var msgs = MESSAGES['C2S'];
action[msgs.initial_client_details] = function(player){
    username = bufferread();
    player.set_username(username);
};
action[msgs.client_disconnects] = function(player){
    console.log("logout");
    controller.clients.splice(player, 1);
    player.disconnect();
};
action[msgs.chat_message] = function(player){
    var chat_message = bufferread();
    player.send_message(chat_message);
};
action[msgs.ping] = function(player){
    var ping_sendtime   = bufferread();
    player.return_ping(ping_sendtime);
};
action[msgs.client_count] = function(player){
    player.return_clientcount();
};
action[msgs.update_user] = function(player){
    player.update();
};

function Player(client_id, socket_id) {
    /* sets client_id and socket_id for the client, and
     returns the assigned client_id back to the client */
    self = this;
    this.client_id = client_id;
    this.socket_id = socket_id;

    // This object represents a player in the game.
    // Make sure the variables match those of the client player object that you want to track.
    this.client_username = null;
    this.client_spriteID = null;
    this.x = null;
    this.y = null;
    this.hspeed = null;
    this.vspeed = null;
    this.mouse_x = null;
    this.mouse_y = null;
    this.td_direction = null;
    this.room_name = null;
    this.armor_top = null;
    this.level = null;

    _initial_reply();

    function _initial_reply() {
        clearbuffer();
        bufferwrite(MESSAGES['S2C'].confirm_client_id);
        bufferwrite(self.client_id);
        sendmessage(self.socket_id);
    }
}
Player.prototype.set_username = function(username) {
    this.client_username = username;
    console.log(this.client_username);
};
Player.prototype.get_socket_id = function() {
    return this.socket_id;
};
Player.prototype.update = function() {
    this.receive_player_data();
    console.log("Client ["+this.client_id.toString()+"]: ("+this.x.toString()+","+this.y.toString()+")");
    this.broadcast_player_data();
};
Player.prototype.receive_player_data = function() {
    //synchronize client variables
    this.client_username    = bufferread();
    this.client_spriteID    = bufferread();
    this.x                  = bufferread();
    this.y                  = bufferread();
    this.hspeed             = bufferread();
    this.vspeed             = bufferread();
    this.mouse_x            = bufferread();
    this.mouse_y            = bufferread();
    this.td_direction       = bufferread();
    this.room_name          = bufferread();
    this.armor_top          = bufferread();
    this.level              = bufferread();
};
Player.prototype.broadcast_player_data = function() {
    //broadcast client variables to other clients
    msg_type = MESSAGES['S2C'].update_user;
    clearbuffer();
    bufferwrite(msg_type);
    bufferwrite(this.client_id);
    bufferwrite(this.client_username);
    bufferwrite(this.client_spriteID);
    bufferwrite(this.x);
    bufferwrite(this.y);
    bufferwrite(this.hspeed);
    bufferwrite(this.vspeed);
    bufferwrite(this.mouse_x);
    bufferwrite(this.mouse_y);
    bufferwrite(this.td_direction);
    bufferwrite(this.room_name);
    bufferwrite(this.armor_top);
    bufferwrite(this.level);
    broadcast();
};
Player.prototype.disconnect = function() {
    console.log("USER "+this.client_id.toString()+" tried to LOGOUT");
    msg_type = MESSAGES['S2C'].client_disconnected;
    clearbuffer();
    bufferwrite(msg_type);
    bufferwrite(this.client_id);
    broadcast();
};
Player.prototype.send_message = function(message) {
    console.log("message: "+message);
    msg_type = MESSAGES['S2C'].chat_message;
    clearbuffer();
    bufferwrite(msg_type);
    bufferwrite(this.client_username);
    bufferwrite(message);
    broadcast();
};
Player.prototype.return_ping = function(send_time) {
    msg_type = MESSAGES['S2C'].ping;
    clearbuffer();
    bufferwrite(msg_type);
    bufferwrite(this.client_id);
    bufferwrite(send_time);
    sendmessage(this.socket_id);
};
Player.prototype.return_clientcount = function() {
    msg_type = MESSAGES['S2C'].client_count;
    clearbuffer();
    bufferwrite(msg_type);
    bufferwrite(controller.clients.length);
    sendmessage(this.socket_id);
};




/////////////////////////////////////////////////////////////////
function broadcast() {
    // send buffer-contents to ALL clients that are connected to the server
    for (var player in controller.clients) {
        if (player) {
            sendmessage(controller.clients[player].get_socket_id());
        }
    }
    clearbuffer();
}


/* LOW LEVEL SOCKET AND BUFFER FUNCTIONS */

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
    if (socket) {
        socket.emit("message", buffer);
    } else {
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