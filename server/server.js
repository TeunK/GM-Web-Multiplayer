var GLOBAL  = require('./global.js');
var http    = require('http');
var io      = require('socket.io');

//keep server running
var server = http.createServer(function(req,res){

    //Write index page response to confirm server is executing
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write(
        "<h1>"+GLOBAL.project_name+"</h1>" +
        "<br/>" +
        "Success! The server is currently running at "+GLOBAL.host+":"+GLOBAL.port
    );
    res.end();
}).listen(GLOBAL.port);

// listen to incoming messages
io.listen(server);





// server startup message in terminal window
console.log("Server started at "+GLOBAL.host+":"+GLOBAL.port);