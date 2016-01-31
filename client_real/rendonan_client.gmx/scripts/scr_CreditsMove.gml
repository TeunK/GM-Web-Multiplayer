//SET NEUTRAL//
if (!keyboard_check(vk_left)    || !keyboard_check(ord('A')))    && (!keyboard_check(vk_right)   || !keyboard_check(ord('D')))    && (!keyboard_check(vk_up)  || !keyboard_check(ord('E'))) && (!keyboard_check(vk_down)   || !keyboard_check(ord('S'))) {td_direction='neutral'}


  
//Movement Left
if (keyboard_check(vk_left) || keyboard_check(ord('A')))
&& place_free(x-pmovespeed,y)
   {
   td_direction='left'
   }
//Movement Right
if (keyboard_check(vk_right) || keyboard_check(ord('D')))
&& place_free(x+pmovespeed,y)
   {
   td_direction='right'
   }
   
   
   
if td_direction='left'      {x-=pmovespeed};
if td_direction='right'     {x+=pmovespeed};
//if td_direction='up'        {y-=tdmovespeed;    lowth-=tdmovespeed};
//if td_direction='down'      {y+=tdmovespeed;    lowth+=tdmovespeed};
//if td_direction='left-up'   {x-=tdmovespeed;    y-=tdmovespeed;     lowth-=tdmovespeed};
//if td_direction='left-down' {x-=tdmovespeed;    y+=tdmovespeed;     lowth+=tdmovespeed};
//if td_direction='right-up'  {x+=tdmovespeed;    y-=tdmovespeed;     lowth-=tdmovespeed};
//if td_direction='right-down'{x+=tdmovespeed;    y+=tdmovespeed;     lowth+=tdmovespeed};
