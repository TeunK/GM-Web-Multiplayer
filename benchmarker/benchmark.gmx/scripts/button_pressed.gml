var xx      = argument0
var yy      = argument1
var text    = argument2
var bgcol   = argument3
var txtcol  = argument4

var text_width = string_width(text)
var text_height = string_height(text)
var margin = 5

var left = xx
var right = xx+2*margin+text_width

draw_set_color(bgcol)
draw_rectangle(left,yy,right,yy+2*margin+text_height,0)

draw_set_color(txtcol)
draw_set_halign(fa_center)
draw_text((left + right) / 2, yy+margin,text)
draw_set_halign(fa_left)

if mouse_x > left && mouse_x < right && mouse_y > yy && mouse_y < yy+2*margin+text_height
{
    draw_set_color(c_yellow)
    draw_rectangle(left,yy,right,yy+2*margin+text_height,1)
    if mouse_check_button_pressed(mb_left)
    {
        return true
    }
    else
    {
        return false
    }
}
else
{
    return false
}
