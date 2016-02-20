/***************************************************
  ############# INTERACTION WITH NPC ###############   <------ obj_tdPlayer
 ***************************************************/
 
 
 
//room Town1
if room=room_Tutorial1
{
  
    //Gramps
    if instance_exists(obj_NPCgrampsTown1)
       {
       if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCgrampsTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
          {
          
          if obj_Controller.globalqueststart=0 && obj_NPCgrampsTown1.QStart=1 && obj_NPCgrampsTown1.QUpdate=0
             {
             create=instance_create(x,y,obj_Chatbox)
             create.roomtown1=1;
             Chatmode("Gramps","I found another one! I shall bring him to Rendonan, we must make haste!",1,0);
             global.ComeFromTutorial=1;
             
             }

          }
       }

    
}
