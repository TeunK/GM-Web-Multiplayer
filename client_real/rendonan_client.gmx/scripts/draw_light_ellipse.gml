/* draw_light_ellipse(x1,y1,r1x,r1y,c1,alpha1,x2,y2,r2x,r2y,c2,alpha2,quantity)

This script draws a light by creating a series of overlapping semi-transparent circles at position (x,y)

In order to use this script, 3D mode must be on.


argument0   x1          x position of center of ellipse 1
argument1   y1          y poistion of center of ellipse 1
argument2   r1x         tangential radius of ellipse 1
argument3   r1y         normal radius of ellipse 1
argument4   c1          color of ellipse 1
argument5   a1          transparency of ellipse 2
argument6   x2          x position of center of ellipse 2
argument7   y2          y poistion of center of ellipse 2
argument8   r2x         tangential radius of ellipse 2
argument9   r2y         normal radius of ellipse 2
argument10  c2          color of ellipse 2
argument11  a2          transparency of ellipse 2
argument12  angle       angle each ellipse should face (this is the angle for the "tangential" direction for ellipse radius)
argument13  quantity    the number of ellipses the light is composed of. 


   Be aware that the transparency of the center of the light will depend also on the number of ellipses that overlap at a particular point.
   The transparency of the light at a point is equal to
        (a + a^2 + a^3 + ... + a^n)
   where a is the alpha value for each circle and n is the number of overlapping ellipses at the point of interest

*/

var i, wavg, centerx, centery, trad, nrad

draw_set_blend_mode(bm_add); // set the drawing mode to additive

for (i=0; i<argument13 i+=1) // from inner circle to outer circle
{
    wavg = i/argument13;
    draw_set_color(merge_color(argument4,argument10,wavg)); // set the color as a weighted average of the inner and outer color
    draw_set_alpha(argument5*(1-wavg)+argument11*wavg); // set the alpha value

    centerx = argument0*(1-wavg)+argument6*wavg;    // x coordinate of center of current ellipse
    centery = argument1*(1-wavg)+argument7*wavg;    // y coordinate of center of current ellipse
    trad = argument2*(1-wavg)+argument8*wavg;       // tangential radius of current ellipse
    nrad = argument3*(1-wavg)+argument9*wavg;       // normal radius of current ellipse

    d3d_transform_stack_push();
    d3d_transform_add_translation(-centerx,-centery,0);
    d3d_transform_add_rotation_z(argument12);
    d3d_transform_add_translation(centerx,centery,0);
    draw_ellipse(centerx-trad,centery-nrad,centerx+trad,centery+nrad,false);
    d3d_transform_stack_pop();
}

draw_set_blend_mode(bm_normal); // make the drawing mode normal again