//arg0 = name
//arg1 = contents
//arg2 = color (opt)

var chat_contents   = argument0;
var name            = argument1;
var message         = argument2;
var color           = argument3;
var max_chatlines   = obj_Chatbox.chat_lines_max;
var i;

//Increment lines
for (i = 0; i < max_chatlines - 1; i += 1)
{
    chat_contents[i,0] = chat_contents[i + 1,0]; //Name
    chat_contents[i,1] = chat_contents[i + 1,1]; //Contents
    chat_contents[i,2] = chat_contents[i + 1,2]; //Color
}

//Add new line
chat_contents[max_chatlines - 1,0] = name;
chat_contents[max_chatlines - 1,1] = message;
chat_contents[max_chatlines - 1,2] = color;

return chat_contents;
