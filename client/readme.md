# Client Side

## Documentation:

### Update /extensions/GMWebNet.js

GMWebNet.js is responsible for the networking features, and acts as bridge between gamemaker and the server.

This is where the networking part is handled

Tasks:

- Sending messages from Client -> Server
- Receiving messages from Server -> Client

### Using GMWebNet.js functions inside GameMaker

#### Importing the extension file 

1) Right-click the extensions tab inside of GameMaker (left-handside menu) and create a new extension

2) Right-click the extension tab you just created and click `add file`

#### Adding / Defining functions

NOTE: 

This is where the bridge is from GML -> JS is made.

You can create a mapping by defining a gamemaker-function name, and map it to an existing function inside the extension (GMWebNet.js) file.

To do this:

1) Right-click the file inside the extension tab, select `add function`

2) Double-click the new undefined function that popped up under the extension-file

3) Fill in the following details about the function:

`Name` = GML-function-name that you want to set (This can be anything as long as it is UNIQUE)

`External Name` = Function name as defined inside the extension-file. This must match EXACTLY with that of the external function name you want to map it to

`Help` = Specifies a small comment whilst using the function, here you can state what the function does

`Return Type` = Return type of the function

`ARGUMENTS` = Notice the `+` and `-` sign on the bottom left, use these to add arguments to the function. This must match EXACTLY with the input argument types as what the external function requires!

##### EXAMPLE: Callable functions from GMWebNet.js

//setup connection to server

`connect(server_ip, server_port)` Connect to a server at ip (address) and port


//disconnect from server

`disconnect(socket)` Disconnect the socket connected to the server



//send buffer content through specified socket

`send_message(socket)` Send message to server through socket



//move last message into buffer, then return buffer size

`receive_message(socket)` while (receive_message(socket)) -> treat incoming message



//buffer clear

`clear_buffer()` clear buffer 


//buffer write types

`write_short(value)` write short type

`write_ushort(value)` write unsigned short type (allow negative values)

`write_int(value)` write integer type

`write_uint(value)` write unsigned integer type (allow negative values)

`write_float(value)` write float type

`write_double(value)` write double type

`write_chars(value)` write character type

`write_byte(value)` write byte type

`write_string(value)` write string type


//buffer reads

`read_short()` read short type

`read_string()` read string type

`read_byte()` read byte type
