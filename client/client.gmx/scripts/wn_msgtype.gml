/*
    Library of message types,
    maps a message-type to an integer which is reverse-translated at the server
*/

//MESSAGE-DIRECTION:
// S2C = server -> client
// C2S = client -> server
message_direction   = argument0; 
message_type        = argument1;

if (message_direction == "C2S")
{
    switch (message_type)
    {
        case "initial_client_details":
            return 1;
        case "client_disconnects":
            return 2;
        case "chat_message":
            return 3;
    }
}
else if (message_direction == "S2C")
{
    switch (message_type)
    {
        case 1:
            return "confirm_client_id";
        case 2:
            return "send_client_name";
        case 3:
            return "client_disconnected";
    }
}
