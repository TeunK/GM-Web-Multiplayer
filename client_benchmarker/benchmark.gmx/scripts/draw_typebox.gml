
//draw text-input bar
if (typing)
{
    //store keyboard input as text
    text = keyboard_string

    draw_set_color(c_black)
    draw_rectangle(0,room_height-16,room_width,room_height,0)
    draw_set_color(c_lime)
    draw_rectangle(0,room_height-16,room_width-1,room_height-1,1)
    draw_text(text_offset,room_height-16,text);
    if (sin(clock/4) > 0.5)
    {   
        draw_text(text_offset+string_width(text)+2,room_height-16,"|")
    }
    draw_set_color(c_black)
}

//typing and input actions
if keyboard_check_pressed(vk_enter)
{
    if (!typing)
    {
        typing=true;
    }
    else
    {
        //print what was typed
        ds_list_add(content,text)
        //ds_list_add(content,ds_list_find_value(content,0));
        //ds_list_replace(content,0,text);
        keyboard_string=""
        text=""//reset input
        typing=false;
    }
}

//text printed field
for (i=0; i<ds_list_size(content); i+=1)
{
    draw_set_color(c_black)
    //draw_set_alpha((ds_list_size(content)-i)/ds_list_size(content)*0.7)
    draw_set_alpha(0.8)
    draw_rectangle(0,16*(ds_list_size(content)-i),room_width-1,16*((ds_list_size(content)-i)+1),0)
    draw_set_color(c_lime)
    draw_rectangle(0,16*(ds_list_size(content)-i),room_width-1,16*((ds_list_size(content)-i)+1),1)
    draw_text(text_offset,16*(ds_list_size(content)-i),ds_list_find_value(content,i));
    draw_set_alpha(1)
}

if (ds_list_size(content) > content_size)
{
    ds_list_delete(content,0)
}
