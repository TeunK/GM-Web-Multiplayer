
/*
    In order to keep network traffic minimal, assign indexes to each of the different message-type meanings.
    Instead of sending a string-meaning, send a single byte integer as defined in this file.

    Definitions of each of the message types.
    Note that these must be the FIRST item in the buffer, which is how the client will know what type the msg is.

    C2S = Client-to-Server messages
    S2C = Server-to-Client messages

    NOTICE: It may be good to keep the same data inside the GameMaker client, so that the client- and server agree
            on the meaning of each message type
 */

var MESSAGES = {
    "S2C": {
        "confirm_client_id": 1,
        "send_client_name": 2,
        "client_disconnected": 3
    },
    "C2S":{
        "initial_client_details": 1,
        "client_disconnects": 2
    }
};

module.exports = MESSAGES;