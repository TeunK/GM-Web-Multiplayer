//argument0=sprite_index
//argument1=image_index
//argument2=depth
//argument3=moving effect upon something's x position (eg obj.x / mouse_x)
//argument4=moving effect upon something's y position (eg obj.y / mouse_y)
//argument5=x1
//argument6=y1
//argument7=x-scale (1=normal / -1=mirrored)
//argument8=x-scale (1=normal / -1=mirrored)
//argument9=rotation

if argument2=0
{
    draw_sprite_ext(argument0,argument1,argument5,argument6,1,1,0,c_white,1)
}
else
{
    draw_sprite_ext(argument0,argument1,argument5+(1/(10*argument2))*-argument3,argument6+(1/(20*argument2))*-argument4,argument7,argument8,argument9,c_white,1);
}