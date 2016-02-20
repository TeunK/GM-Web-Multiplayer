//CREATING A "BASIC" MOVEMENT SCRIPT::

//keyboard_check(xxx)
//keyboard_check(ord('xxx'))
//___________________________




//SET NEUTRAL//
if (!keyboard_check(vk_left)    || !keyboard_check(ord('A')))    && (!keyboard_check(vk_right)   || !keyboard_check(ord('D')))    && (!keyboard_check(vk_up)  || !keyboard_check(ord('E'))) && (!keyboard_check(vk_down)   || !keyboard_check(ord('S'))) {td_direction='neutral'}

//movement
if global.pause=0
{
    if obj_Controller.typing=0
    {
     if !instance_exists(obj_Chatbox) //<---- note! if it's not invisibly running in background, CANT MOVE!
     {
      
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
      
     }
    }
}

/*

if global.pause = 0
{
if instance_exists(obj_Chatbox)
{
if obj_Chatbox.visible=0

{
/*
LEFT:

left | a
!up | w
!down | s
!right | d


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



if td_direction='left'      {x-=tdmovespeed};
if td_direction='right'     {x+=tdmovespeed};
if td_direction='up'        {y-=tdmovespeed;    lowth-=tdmovespeed};
if td_direction='down'      {y+=tdmovespeed;    lowth+=tdmovespeed};
if td_direction='left-up'   {x-=tdmovespeed;    y-=tdmovespeed;     lowth-=tdmovespeed};
if td_direction='left-down' {x-=tdmovespeed;    y+=tdmovespeed;     lowth+=tdmovespeed};
if td_direction='right-up'  {x+=tdmovespeed;    y-=tdmovespeed;     lowth-=tdmovespeed};
if td_direction='right-down'{x+=tdmovespeed;    y+=tdmovespeed;     lowth+=tdmovespeed};

























}}}
