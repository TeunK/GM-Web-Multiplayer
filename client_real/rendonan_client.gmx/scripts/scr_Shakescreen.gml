if global.shakescreen>0
{
global.shakescreen-=0.2
view_angle=random_range(-global.shakescreen*0.5,+global.shakescreen*0.5)
//view_xview[0]=view_xview[0]+random_range(-global.shakescreen*2,+global.shakescreen*2)
//view_yview[0]=view_yview[0]+random_range(-global.shakescreen*2,+global.shakescreen*2)
}
else
{global.shakescreen=0}