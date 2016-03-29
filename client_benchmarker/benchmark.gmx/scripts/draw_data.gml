//init
var x0          = argument0
var y0          = argument1
var lines       = argument2
var width       = max_value(strings_to_widths(lines))
var line_height = 18
var height      = line_height*array_length_1d(lines)
var margin      = 10
var x_start     = x0 + margin
var y_start     = y0 + margin
var text_font   = ft_mini
var bg_col      = c_white
var text_col    = c_black

//background
draw_set_color(bg_col)
draw_rectangle(x0, y0-margin, x0+width+margin, y0+height+margin,0)

draw_set_halign(fa_left)
draw_set_valign(fa_middle)

//draw text
for (var i=0; i<array_length_1d(lines); i+=1)
{
    draw_set_font(text_font)
    draw_set_colour(text_col)
    draw_text(x_start, y_start+i*line_height,lines[i])   
}
