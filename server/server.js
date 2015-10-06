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

    // assign id to client
    var client_id = controller.clients.length;
    var socket_id = socket;
    controller.clients.push( {
        client_id : client_id,
        socket_id : socket_id
    });



});



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