
/*
    In order to keep network traffic minimal, assign indexes to each of the different message-type meanings.
    Instead of sending a string-meaning, send a single byte integer as defined in this file.

    Definitions of each of the message types.
    Note that these must be the FIRST item in the buffer, which is how the client will know what type the msg is.

    C2S = Client-to-Server messages
    S2C = Server-to-Client messages
 */

var MESSAGES = {
    "C2S": {
        "confirm_client_id": 1
    },
    "S2C":{
        "update_coordinates": 1
    }
};

module.exports = MESSAGES;