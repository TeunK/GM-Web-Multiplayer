# GM-Web-Multiplayer
Honours Project

Dissertation PDF:

[https://github.com/TeunK/GM-Web-Multiplayer/blob/master/report/dissertation/skeleton.pdf](view from git)

[https://github.com/TeunK/GM-Web-Multiplayer/raw/master/report/dissertation/skeleton.pdf](download link)



# Documentation

### GENERAL
This project consists of 2 parts, `Server` and `Client`

### Server
Written with Node.JS

For details, read the readme inside the server directory.

### Client
Combination of JavaScript and GML

For details, read the readme inside of the client directory.

##### THEORY
Gamemaker itself is unable to connect to use any networking features when exported to HTML5. Therefore an extension is written in JavaScript, using socket.io (TCP), which handles the connection between the server and Gamemaker.

##### JavaScript
This is the bridge between Gamemaker (Web browser client) and the Server. 

Functions are written inside `client/client.gmx/extensions/GMWebNet/GMWebNet.js`, and can be called from inside GML after setting up an appropriate mapping.

##### GML
This is where the application itself is written.

The extensions tab (left-hand-side) allows the developer (you) to map the JavaScript functions to GML functions.
