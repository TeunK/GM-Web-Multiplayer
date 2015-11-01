//arg0 = x position on screen (top left corner)
//arg1 = y position on screen (top left corner)

draw_set_halign(fa_left); 
draw_set_font(ft_main);

var x0              = argument0
var y0              = argument1
var messages        = argument2
var max_chatlines   = obj_Chatbox.chat_lines_max
var chatting        = obj_Chatbox.chatting
var line_height     = 16


var i;
for (i = 0; i < max_chatlines ; i += 1)
{
    draw_set_color(messages[i,2]);
    var ypos = y0 - ((2+i)*line_height);
    
    if (messages[i,0] != "")
    {
        //Draw name-prefix if one is supplied
        var prefix = messages[i,0] + ": ";
        draw_text(x0, ypos, prefix);
    }
    
    //Draw contents
    draw_text(x0 + string_width(prefix), ypos, messages[i,1]);
}

if (chatting == true)
{
    //Draw unfinished chat entry
    draw_set_color(c_gray);
    draw_text(x0, y0 - line_height+2, keyboard_string);
}
