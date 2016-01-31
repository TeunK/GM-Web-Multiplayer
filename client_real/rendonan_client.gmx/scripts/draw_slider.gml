//argument0 = x1
//argument1 = y1
//argument2 = x2
//argument3 = y2
//argument4 = background color line 1
//argument5 = dots color line 1
//argument6 = background color line 2
//argument7 = dots color line 2
//argument8 = background color line 3
//argument9 = dots color line 3
//argument10 = distance between dots in pixels
//argument11 = movement focus (eg mouse_x or object.x)



var lineheight, linewidth, dotamount;

//define height and width per line
lineheight = round((argument3 - argument1)/3);
linewidth = round(argument2 - argument0);

//draw borderline
if argument1 < argument3
{
    draw_set_color(argument7)
    draw_line(argument0,argument1-1,argument2,argument1-1);
    draw_line(argument0,argument3+1,argument2,argument3+1);
}
else if argument1 > argument3
{
    draw_set_color(argument7)
    draw_line(argument0,argument1+1,argument2,argument1+1);
    draw_line(argument0,argument3-1,argument2,argument3-1);
}

//draw line background lines
//line 1
draw_set_color(argument4);
draw_rectangle(argument0,argument1+0*lineheight,argument2,argument1+1*lineheight,0);
//line 2
draw_set_color(argument6);
draw_rectangle(argument0,argument1+1*lineheight,argument2,argument1+2*lineheight,0);
//line 3
draw_set_color(argument8);
draw_rectangle(argument0,argument1+2*lineheight,argument2,argument1+3*lineheight,0);

//draw dots on lines
dotamount = round(linewidth/argument10);

//line1
for (i=0; i<2*dotamount; i+=1)
{
    draw_set_color(argument5)
    draw_rectangle(argument0+0.1*argument11-0.5*dotamount*argument10+argument10*i,argument1+0*lineheight,argument0+0.1*argument11+1-0.5*dotamount*argument10+argument10*i,argument1+1*lineheight,0)
}

//line2
for (i=0; i<2*dotamount; i+=1)
{
    draw_set_color(argument7)
    draw_rectangle(argument0+0.133*argument11-0.5*dotamount*argument10+argument10*i,argument1+1*lineheight,argument0+0.133*argument11+1-0.5*dotamount*argument10+argument10*i,argument1+2*lineheight,0)
}

//line3
for (i=0; i<2*dotamount; i+=1)
{
    draw_set_color(argument9)
    draw_rectangle(argument0+0.1.66*argument11-0.5*dotamount*argument10+argument10*i,argument1+2*lineheight,argument0+0.1.66*argument11+1-0.5*dotamount*argument10+argument10*i,argument1+3*lineheight,0)
}
