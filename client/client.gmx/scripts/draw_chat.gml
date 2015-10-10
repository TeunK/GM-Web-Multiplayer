//arg0 = x position on screen (top left corner)
//arg1 = y position on screen (top left corner)

draw_set_halign(fa_left); 
draw_set_font(ft_main);

var x0              = argument0
var y0              = argument1
var messages        = argument2
var max_chatlines   = obj_Chatbox.chat_lines_max
var chatting        = obj_Chatbox.chatting
var line_height     = 12



var i;
for (i = 0; i < max_chatlines; i += 1)
{
    draw_set_color(messages[i,2]);
    
    if (messages[i,0] != "")
    {
        //Draw name-prefix if one is supplied
        var prefix = messages[i,0] + ": ";
        draw_text(x0,y0 + (i*line_height),prefix);
    }
    
    //Draw contents
    draw_text(x0 + string_width(prefix),y0 + (i*line_height),messages[i,1]);
}

if (chatting == true)
{
    //Draw unfinished chat entry
    draw_set_color(c_gray);
    draw_text(x0,y0 + (max_chatlines*line_height) + 4,keyboard_string);
}
