//Jumping Script

//Set Gravity
gravity_direction=270;
if place_free(x,y+1.5)
{gravity=0.7} else {gravity=0}
//Limit vertical speed
if vspeed >=10
{vspeed=10}

//Jumping
if !place_free(x,y+1.5) 
&& (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord('W')) || keyboard_check_pressed(ord('K')))
{
vspeed=-8
}