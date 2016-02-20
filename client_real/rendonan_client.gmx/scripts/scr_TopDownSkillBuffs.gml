/***************************************************
  ################# BUFF STATUS ####################
 ***************************************************/
 
 
 /*INITIATE BUFFS
 
 //BUFF 1
 if keyboard_check_pressed(ord('1'))
 {
 if buff1=0 {buff1=1}
 else if buff1=1 {buff1=0}
 }
 
 //BUFF 2
 if keyboard_check_pressed(ord('2'))
 {
 if buff2=0 {buff2=1}
 else if buff2=1 {buff2=0}
 }
 
  //BUFF 3
 if keyboard_check_pressed(ord('3'))
 {
 if buff3=0 {buff3=1}
 else if buff3=1 {buff3=0}
 }
 
 //BUFF 4
 if keyboard_check_pressed(ord('4'))
 {
 if buff4=0 {buff4=1}
 else if buff4=1 {buff4=0}
 }
 
  //BUFF 5
 if keyboard_check_pressed(ord('5'))
 {
 if buff5=0 {buff5=1}
 else if buff5=1 {buff5=0}
 }
 
 //BUFF 6
 if keyboard_check_pressed(ord('6'))
 {
 if buff6=0 {buff6=1}
 else if buff6=1 {buff6=0}
 }
 
 
 
//BUFFS DETAILS




//---------------------------------- BUFF 1
if buff1=1 && !instance_exists(obj_tdBuff1)  // Windwalk
{
instance_create(x,y,obj_tdBuff1);
}

if buff1=0 && instance_exists(obj_tdBuff1)
{
with (obj_tdBuff1) instance_destroy();
}
//---------------------------------- BUFF 1





//---------------------------------- BUFF 2
if buff2=1 && !instance_exists(obj_tdBuff2)  // Windwalk
{
instance_create(x,y,obj_tdBuff2);
}

if buff2=0 && instance_exists(obj_tdBuff2)
{
with (obj_tdBuff2) instance_destroy();
}
//---------------------------------- BUFF 2





//---------------------------------- BUFF 3
if buff3=1 && !instance_exists(obj_tdBuff3)  // Windwalk
{
instance_create(x,y,obj_tdBuff3);
}

if buff3=0 && instance_exists(obj_tdBuff3)
{
with (obj_tdBuff3) instance_destroy();
}
//---------------------------------- BUFF 3




//---------------------------------- BUFF 4
if buff4=1 && !instance_exists(obj_tdBuff4)  // Windwalk
{
instance_create(x,y,obj_tdBuff4);
}

if buff4=0 && instance_exists(obj_tdBuff4)
{
with (obj_tdBuff4) instance_destroy();
}
//---------------------------------- BUFF 4




//---------------------------------- BUFF 5
if buff5=1 && !instance_exists(obj_tdBuff5)  // Windwalk
{
instance_create(x,y,obj_tdBuff5);
}

if buff5=0 && instance_exists(obj_tdBuff5)
{
with (obj_tdBuff5) instance_destroy();
}
//---------------------------------- BUFF 5




//---------------------------------- BUFF 6
if buff6=1 && !instance_exists(obj_tdBuff6)  // Windwalk
{
instance_create(x,y,obj_tdBuff6);
}

if buff6=0 && instance_exists(obj_tdBuff6)
{
with (obj_tdBuff6) instance_destroy();
}
//---------------------------------- BUFF 6
