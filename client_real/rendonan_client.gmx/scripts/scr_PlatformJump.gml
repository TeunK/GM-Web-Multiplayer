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

/*
//Set Initial Backup position
if jump=0 
{
height=y-60;
lowth=y
}

//DEPTH STATUS
DepthTarget=instance_nearest(x,y,Block16x16)

//Initiate Jumping script
if keyboard_check_pressed(ord('K')) && jump=0
{
up=1
gravity_direction=270
vspeed=-15
jump=1
if DepthTarget.y <= lowth {depth=-5}
if DepthTarget.y > lowth {depth=2}
}

//set inair gravity
if jump=1
{
gravity=1.5
}

//if hit the ground
if jump=1 && y > lowth
{
vspeed=0
gravity=0
y=lowth
jump=0
depth=2
}

//if on blocked area
if place_meeting(x,y,Block16x16) && jump=0
{y+=12;depth=-5;}