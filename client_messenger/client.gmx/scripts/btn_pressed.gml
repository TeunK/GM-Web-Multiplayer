x0 = argument0
y0 = argument1
text = argument2

margin = 3
x1 = x0 + string_width(text)
y1 = y0 + string_height(text)
mid = x0 + (x1-x0)/2

if mouse_enters(x0-margin,y0-margin,x1+margin,y1+margin)
{
    draw_set_color(c_white)
    draw_rectangle(x0-margin,y0-margin,x1+margin,y1+margin,0)
    draw_set_color(c_black)
    draw_set_halign(fa_center)
    draw_text(mid, y0, text)
    draw_set_halign(fa_left)
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
    draw_set_color(c_gray)
    draw_rectangle(x0-margin,y0-margin,x1+margin,y1+margin,0)
    draw_set_color(c_black)
    draw_set_halign(fa_center)
    draw_text(mid, y0, text)
    draw_set_halign(fa_left)
    return false
}
