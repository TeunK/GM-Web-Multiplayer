//argument0 = x1
//argument1 = y1
//argument2 = x2
//argument3 = y2
//argument4 = grain color
//argument5 = grain amount
//argument6 = grain alpha
//argument7 = direction (0=horizontal / 1=vertical)
//argument8 = grain length


if argument7 = 0
{
    var xx1, xx2, yy;
    xx1=argument0+round(random(argument2));
    xx2=xx1+round(random(argument8));
    yy =argument1+round(random(argument3));
    
    draw_set_color(argument4);
    draw_set_alpha(argument6);
    draw_line(xx1,yy,xx2,yy)
}

else if argument7 = 1
{
    var yy1, yy2, xx;
    yy1=argument1+round(random(argument3));
    yy2=yy1+round(random(argument8));
    xx =argument0+round(random(argument2));
    
    draw_set_color(argument4);
    draw_set_alpha(argument6);
    draw_line(xx,yy1,xx,yy2)
}