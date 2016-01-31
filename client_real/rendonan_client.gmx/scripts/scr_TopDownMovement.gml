//CREATING A "BASIC" MOVEMENT SCRIPT::

//keyboard_check(xxx)
//keyboard_check(ord('xxx'))
//___________________________



//SET NEUTRAL//
if (!keyboard_check(vk_left)    || !keyboard_check(ord('A')))    && (!keyboard_check(vk_right)   || !keyboard_check(ord('D')))    && (!keyboard_check(vk_up)  || !keyboard_check(ord('E'))) && (!keyboard_check(vk_down)   || !keyboard_check(ord('S'))) {td_direction='neutral'}


if global.pause = 0
{
    if !instance_exists(obj_Chatbox)
    {
        if instance_exists(obj_Controller)
        {
            if obj_Controller.typing=0
            {
                /*
                LEFT:
                
                left | a
                !up | w
                !down | s
                !right | d
                */
                
                if 
                (keyboard_check(vk_left) || keyboard_check(ord('A'))) 
                && !keyboard_check(vk_up) 
                && !keyboard_check(ord('W'))
                && !keyboard_check(vk_down)
                && !keyboard_check(ord('S'))
                && !keyboard_check(vk_right)
                && !keyboard_check(ord('D'))
                && place_free(x-tdmovespeed,y)  
                {td_direction='left'}   ;
                
                
                
                /*____________________________________
                RIGHT:
                
                right | d
                !up | w
                !down | s
                !left | a
                */
                
                if 
                (keyboard_check(vk_right) || keyboard_check(ord('D'))) 
                && !keyboard_check(vk_up) 
                && !keyboard_check(ord('W'))
                && !keyboard_check(vk_down)
                && !keyboard_check(ord('S'))
                && !keyboard_check(vk_left)
                && !keyboard_check(ord('A'))
                && place_free(x+tdmovespeed,y)  
                {td_direction='right'}   ;
                
                
                
                /*_______________________________________
                UP:
                
                up | w
                !down | s
                !left | a
                !right | d
                */
                
                if 
                (keyboard_check(vk_up) || keyboard_check(ord('W'))) 
                && !keyboard_check(vk_left) 
                && !keyboard_check(ord('A'))
                && !keyboard_check(vk_down)
                && !keyboard_check(ord('S'))
                && !keyboard_check(vk_right)
                && !keyboard_check(ord('D'))
                && place_free(x,y-tdmovespeed)  
                {td_direction='up'}   ;
                
                /*_______________________________________
                DOWN:
                
                down | s
                !up | w
                !left | a
                !right | d
                */
                if 
                (keyboard_check(vk_down) || keyboard_check(ord('S'))) 
                && !keyboard_check(vk_up) 
                && !keyboard_check(ord('W'))
                && !keyboard_check(vk_left)
                && !keyboard_check(ord('A'))
                && !keyboard_check(vk_right)
                && !keyboard_check(ord('D'))
                && place_free(x,y+tdmovespeed)  
                {td_direction='down'}   ;
                /*_______________________________________
                LEFT-TOP:
                
                left | a
                up | w
                
                !down | s
                !right | d
                */
                
                if 
                (keyboard_check(vk_left) || keyboard_check(ord('A'))) 
                && (keyboard_check(vk_up) || keyboard_check(ord('W')))
                && !keyboard_check(vk_down)
                && !keyboard_check(ord('S'))
                && !keyboard_check(vk_right)
                && !keyboard_check(ord('D'))
                
                {
                if place_free(x-tdmovespeed,y-tdmovespeed)  {td_direction='left-up'}
                    else if place_free(x-tdmovespeed,y)     {td_direction='left'}
                    else if place_free(x,y-tdmovespeed)     {td_direction='up'}
                }
                
                
                /*_______________________________________
                LEFT-DOWN:
                
                left | a
                down | s
                
                !up | w
                !right | d
                */
                
                if 
                (keyboard_check(vk_left) || keyboard_check(ord('A'))) 
                && (keyboard_check(vk_down) || keyboard_check(ord('S')))
                && !keyboard_check(vk_up)
                && !keyboard_check(ord('W'))
                && !keyboard_check(vk_right)
                && !keyboard_check(ord('D'))
                
                {
                if place_free(x-tdmovespeed,y+tdmovespeed)  {td_direction='left-down'}
                    else if place_free(x-tdmovespeed,y)     {td_direction='left'}
                    else if place_free(x,y+tdmovespeed)     {td_direction='down'}
                }
                
                /*_______________________________________
                RIGHT-TOP:
                
                right | d
                up | w
                
                !down | s
                !left | a
                */
                if 
                (keyboard_check(vk_right) || keyboard_check(ord('D'))) 
                && (keyboard_check(vk_up) || keyboard_check(ord('W')))
                && !keyboard_check(vk_down)
                && !keyboard_check(ord('S'))
                && !keyboard_check(vk_left)
                && !keyboard_check(ord('A'))
                
                {
                if place_free(x+tdmovespeed,y-tdmovespeed)  {td_direction='right-up'}
                    else if place_free(x+tdmovespeed,y)     {td_direction='right'}
                    else if place_free(x,y-tdmovespeed)     {td_direction='up'}
                }
                /*_______________________________________
                RIGHT-DOWN:
                
                right | d
                down | s
                
                !up | w
                !left | a
                */
                if 
                (keyboard_check(vk_right) || keyboard_check(ord('D'))) 
                && (keyboard_check(vk_down) || keyboard_check(ord('S')))
                && !keyboard_check(vk_up)
                && !keyboard_check(ord('W'))
                && !keyboard_check(vk_left)
                && !keyboard_check(ord('A'))
                
                {
                if place_free(x+tdmovespeed,y+tdmovespeed)  {td_direction='right-down'}
                    else if place_free(x+tdmovespeed,y)     {td_direction='right'}
                    else if place_free(x,y+tdmovespeed)     {td_direction='down'}
                }
                
                
                
                //____________________________________________________________________
                //MOVEMENT DATA
                /*
                if (!keyboard_check(vk_left)    || !keyboard_check(ord('A')))    && (!keyboard_check(vk_right)   || !keyboard_check(ord('D')))    && (!keyboard_check(vk_up)  || !keyboard_check(ord('E'))) && (!keyboard_check(vk_down)   || !keyboard_check(ord('S'))) {td_direction='neutral'}
                /*Left   if (keyboard_check(vk_left)      || keyboard_check(ord('A'))) && (!keyboard_check(vk_up) || !keyboard_check(vk_down) || !keyboard_check(ord('W')) || !keyboard_check(ord('S')))     && place_free(x-tdmovespeed,y)  {td_direction='left'}   ;
                /*Left-up if (keyboard_check(vk_left)      || keyboard_check(ord('A'))) && (keyboard_check(vk_up) || keyboard_check(ord('W')))  && !keyboard_check(vk_down) && !keyboard_check(ord('S')) && !keyboard_check(vk_right) && !keyboard_check(ord('D'))     && place_free(x-tdmovespeed,y-tdmovespeed)  {td_direction='left-up'}   ;
                /*Right   if keyboard_check(vk_right)     || keyboard_check(ord('D'))     && place_free(x+tdmovespeed,y)  {td_direction='right'}  ;
                /*Up   if (keyboard_check(vk_up)        || keyboard_check(ord('W'))) && (!keyboard_check(vk_) || !keyboard_check(vk_down) || !keyboard_check(ord('W')) || !keyboard_check(ord('S')))     && place_free(x,y-tdmovespeed)  {td_direction='up'}     ;
                /*Down    if keyboard_check(vk_down)      || keyboard_check(ord('S'))     && place_free(x,y+tdmovespeed)  {td_direction='down'}   ;
                */
                
                /*length sorted
                if td_direction='left'      {x-=tdmovespeed; dir=180};
                if td_direction='right'     {x+=tdmovespeed; dir=0};
                if td_direction='up'        {y-=tdmovespeed; dir=90;       lowth-=tdmovespeed};
                if td_direction='down'      {y+=tdmovespeed; dir=270;      lowth+=tdmovespeed};
                if td_direction='left-up'   {x-=tdmovespeed; dir=135;      y-=tdmovespeed;     lowth-=tdmovespeed};
                if td_direction='left-down' {x-=tdmovespeed; dir=225;      y+=tdmovespeed;     lowth+=tdmovespeed};
                if td_direction='right-up'  {x+=tdmovespeed; dir=45;       y-=tdmovespeed;     lowth-=tdmovespeed};
                if td_direction='right-down'{x+=tdmovespeed; dir=315;      y+=tdmovespeed;     lowth+=tdmovespeed};
                */
                
                //  Dir Sorted
                if td_direction='right'         && place_free(x+tdmovespeed,y)              {x+=tdmovespeed; dir=0};
                if td_direction='right-up'      && place_free(x+tdmovespeed,y-tdmovespeed)  {x+=tdmovespeed; dir=45;       y-=tdmovespeed;     lowth-=tdmovespeed};
                if td_direction='up'            && place_free(x,y-tdmovespeed)              {y-=tdmovespeed; dir=90;       lowth-=tdmovespeed}
                if td_direction='left-up'       && place_free(x-tdmovespeed,y-tdmovespeed)  {x-=tdmovespeed; dir=135;      y-=tdmovespeed;     lowth-=tdmovespeed};
                if td_direction='left'          && place_free(x-tdmovespeed,y)              {x-=tdmovespeed; dir=180};
                if td_direction='left-down'     && place_free(x-tdmovespeed,y+tdmovespeed)  {x-=tdmovespeed; dir=225;      y+=tdmovespeed;     lowth+=tdmovespeed};
                if td_direction='down'          && place_free(x,y+tdmovespeed)              {y+=tdmovespeed; dir=270;      lowth+=tdmovespeed};
                if td_direction='right-down'    && place_free(x+tdmovespeed,y+tdmovespeed)  {x+=tdmovespeed; dir=315;      y+=tdmovespeed;     lowth+=tdmovespeed};
            
            
    
            }
        }
    }
}