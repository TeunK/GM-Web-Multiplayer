//Jumping Script

//Set Initial Backup position
if jump=0 
{
    height=y-60;
    lowth=y
}

//DEPTH STATUS
if instance_exists(Block16x16)
{
DepthTarget=instance_nearest(x,y,Block16x16)
} else {DepthTarget=id}

//Initiate Jumping script
if keyboard_check_pressed(ord('K')) && jump=0 && obj_Controller.typing=0
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
