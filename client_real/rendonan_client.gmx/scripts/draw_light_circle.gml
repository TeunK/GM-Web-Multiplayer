/* draw_light_circle(x1,y1,r1,c1,a1,x2,y2,r2,c2,a2,quantity)

This script draws a light by creating a series of overlapping semi-transparent circles at position (x,y)

This script does not require 3D mode

argument0    x1: x position of circle 1
argument1    y1: y poistion of circle 1
argument2    r1: radius of circle 1
argument3    c1: color of circle 1
argument4    a1: transparency of circle1. Between 0 and 1
argument5    x2: x position of circle 2
argument6    y2: y position of circle 2
argument7    r2: radius of circle 2
argument8    c2: color of circle 2
argument9    a2: transparency of circle 2. Between 0 and 1
argument10   quantity: the number of circles the light is composed of


   Be aware that the transparency of the center of the light will depend also on the number of circles that overlap at a particular point.
   The transparency of the light at a point is equal to
        (a + a^2 + a^3 + ... + a^n)
   where a is the alpha value for each circle and n is the number of overlapping circles at the point of interest
*/

var i, wavg;

draw_set_blend_mode(bm_add); // set the drawing mode to additive

for (i=0; i<argument10; i+=1) // from inner circle to outer circle
{
    wavg = i/argument10;
    draw_set_alpha(argument4*(1-wavg)+argument9*wavg); // set the alpha value
    draw_set_color(merge_color(argument3,argument8,wavg)); // set the color as a weighted average of the inner and outer color
    draw_circle(argument0*(1-wavg)+argument5*wavg,argument1*(1-wavg)+argument6*wavg,argument2*(1-wavg)+argument7*wavg,false); // draw the circle
}

draw_set_blend_mode(bm_normal); // make the drawing mode normal again
