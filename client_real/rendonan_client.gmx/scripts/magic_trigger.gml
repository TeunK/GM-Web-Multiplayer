//argument0 = button pressed and skill

if keyboard_check_released(ord(string(argument0))) 
{
    if global.usemagic<0 && !instance_exists(obj_MagicCursor) 
    {
        if skilllevel[argument0] <= obj_Controller.ownlevel
        {
            if obj_Controller.ownsp > skillcost[argument0]
            {
                instance_create(mouse_x,mouse_y,obj_MagicCursor);
                obj_Controller.ownsp-=skillcost[argument0]
                global.usemagic=argument0-1
            }
            else
            {
                saypc("Not enough SP to use this skill.",c_white);
                            }
        }
        else
        {
            saypc("Level too low to use this skill.",c_white);
            exit;
        }
    }
};