//color scheme
var bg_col          = c_white
var text_col        = c_black
var curve_col       = c_navy


//draw limit
/*
var limit = min(5, obj_Controller.ping_history_limit)

for (i=0; i<limit; i+=1)
{
    var ping = obj_Network_controller.ping[i]
    draw_set_color(text_col)
    draw_set_halign(fa_left)
    draw_text(ping_x,ping_y+margin*i, "Ping: "+ping)
}
*/
/*************************************/
// GRAPH CREATION
//define bottom-left corner of graph
var graph_x0        = 60
var graph_y0        = 460
var graph_height    = 180
var graph_width     = 580
draw_set_font(ft_mini)

//draw background
draw_set_color(bg_col)
draw_rectangle(graph_x0,graph_y0,graph_x0+graph_width,graph_y0-graph_height,0)

//draw pingrate info
draw_set_color(text_col)
draw_text(graph_x0,graph_y0+10,"Pinging every: "+string(obj_Controller.req_rate_ping)+"/"+string(room_speed)+"s") 

//draw axes
draw_set_color(text_col)
draw_line(graph_x0,graph_y0,graph_x0+graph_width,graph_y0)  //horizontal
draw_line(graph_x0,graph_y0,graph_x0,graph_y0-graph_height) //vertical

//draw vertical values
var pings = obj_Controller.pings;
var instances = obj_Controller.instances
//var pings = obj_Network_controller.ping
var max_val = max_value(pings)
draw_set_halign(fa_right)
draw_set_color(text_col)
draw_text(graph_x0-5,graph_y0,"0ms");
var verticals = 5
for (i=1; i<=verticals; i+=1)
{
    draw_set_alpha(1)
    draw_set_valign(fa_middle)
    draw_text(graph_x0-5,graph_y0-(i/verticals*graph_height),round((i/verticals)*max_val) + "ms");
    draw_set_valign(fa_top)
    //horizontal separation line
    draw_set_alpha(0.2)
    draw_line(graph_x0,graph_y0-(i/verticals*graph_height),graph_x0+graph_width,graph_y0-(i/verticals*graph_height))
}

//draw horizontal intervals
var interval_count = array_length_1d(pings)
for (i=0; i<interval_count; i+=1)
{
    draw_set_alpha(1)
    draw_set_halign(fa_center)
    //draw_text(graph_x0+(graph_width/(interval_count))*i,graph_y0-5,i)
    draw_set_halign(fa_left)
    draw_set_alpha(0.2)
    //vertical separation line
    //draw_line(graph_x0+(graph_width/(interval_count)*i),graph_y0,graph_x0+graph_width/(interval_count)*i,graph_y0-graph_height)
}
draw_set_alpha(1)

//draw curves
var max_val = max_value(pings)
if (max_val == 0) {max_val = 1} //limit boundaries in case its 0
for(i=1; i<interval_count; i+=1)
{
    //calculate positions
    var ping_old_val_percent    = pings[i-1] / max_val
    var ping_new_val_percent    = pings[i] / max_val
    var interval_width          = (graph_width/interval_count)
    var x_left                  = (i-1) * interval_width
    var x_right                 = (i) * interval_width
    var y_old                   = ping_old_val_percent * graph_height
    var y_new                   = ping_new_val_percent * graph_height
    
    //draw line
    draw_set_color(curve_col)
    draw_line(graph_x0+x_left,graph_y0-y_old,graph_x0+x_right, graph_y0-y_new)
    draw_set_halign(fa_center)
    draw_set_color(text_col)
    if (instances[i] == 0) {instances[i] = 1}
    draw_set_font(ft_graph)
    draw_text(graph_x0+x_right,graph_y0-y_new-20,round(pings[i]))
    draw_set_font(ft_mini);
    draw_set_halign(fa_left)
}
draw_set_font(ft_main)
