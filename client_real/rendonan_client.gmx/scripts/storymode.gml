//argument0=string content;
//argument1=string color;
//argument2=string font;
//argument3=alpha
//argument4=break after width in pixels (600 suggested)
var font = argument2
font = ft_Intro;

draw_set_color(argument1);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_alpha(argument3);

draw_text_ext(view_xview[0]+500,view_yview[0]+320,argument0,-1,argument4);


draw_set_color(c_black);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
