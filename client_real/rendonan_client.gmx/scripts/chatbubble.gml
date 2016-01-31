//argument0 = string
//argument1 = mouth x position
//argument2 = mouth y position

var corner1_x,corner1_y,corner2_x,corner2_y,space;

//note that all the following values can be changed
space=10 //just a blank space between the ballon and the text
corner1_x=argument1-20
corner1_y=argument2-30

corner2_x=corner1_x+string_width_ext(argument0,15,640)+2*space
corner2_y=corner1_y-(string_height_ext(argument0,15,640)+2*space)

draw_set_color(c_white)
draw_roundrect(corner1_x,corner1_y,corner2_x,corner2_y,0)
draw_set_color(c_black)
draw_roundrect(corner1_x,corner1_y,corner2_x,corner2_y,1)

draw_set_color(c_white)
draw_triangle(argument1,argument2,argument1+10,argument2-30,argument1+30,argument2-30,0)

draw_set_color(c_black)
draw_line(argument1,argument2,argument1+10,argument2-30)

draw_line(argument1,argument2,argument1+30,argument2-30)

draw_text_ext(corner1_x+space,corner2_y+space,argument0,15,640) 

//these values MUST be the same used to define corner2 coordinates