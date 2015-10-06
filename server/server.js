var GLOBAL  = require('./global.js');
var http    = require('http');
var server  = http.createServer(feedback_page);
var io      = require('socket.io').listen(server);

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



// server startup message in terminal window
console.log("Server started at "+GLOBAL.host+":"+GLOBAL.port);