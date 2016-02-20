/***************************************************
  ############# INTERACTION WITH NPC ###############   <------ obj_tdPlayer
 ***************************************************/
 
 
 
//room Town1
if room=room_Town1
{
    
    //granny
    if instance_exists(obj_NPCgrannyTown1)
       {
       if keyboard_check_pressed(ord('J')) && distance_to_object(obj_NPCgrannyTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
          {
          if obj_Controller.globalqueststart=0 && obj_NPCgrannyTown1.QStart=0 && obj_NPCgrannyTown1.QUpdate=0 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
             {
                dir = choose(1,2,3,4)
                {
                     if dir=1{
                     create=instance_create(x,y,obj_Chatbox)
                     Chatmode("Granny","hello kid, Welcome to Rendonan!",1,0);
                     }
                     
                     if dir=2{
                     create=instance_create(x,y,obj_Chatbox)
                     Chatmode("Granny","Good "+string(obj_Clock.tide)+string("!"),1,0);
                     }
                     
                     if dir=3{
                     create=instance_create(x,y,obj_Chatbox)
                     Chatmode("Granny","Everybody loves grannies cookies :)",2,1);
                     }
                     
                     if dir=4{
                     create=instance_create(x,y,obj_Chatbox)
                     Chatmode("Granny","Oh hi there!",1,0);
                     ;
                     }
                }
             }
          }
        }
    
    
    //blacksmith
    if instance_exists(obj_NPCblacksmithTown1)
       {
       if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCblacksmithTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
          {
          if obj_Controller.globalqueststart=0 && obj_NPCblacksmithTown1.QStart=0 && obj_NPCblacksmithTown1.QUpdate=0 
             {
             create=instance_create(x,y,obj_Chatbox)
             Chatmode("Blacksmith","hello kid, Welcome to Rendonan!",1,0);
             }
          }
       }
    
    
    //Jack
    if instance_exists(obj_NPCjackTown1)
       {
       if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCjackTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
          {
          if obj_Controller.globalqueststart=0 && obj_NPCjackTown1.QStart=0 && obj_NPCjackTown1.QUpdate=0 // obj_Controller.Questactive[1]!=1 && (obj_Controller.Questpart[1]!=1)
             {
             create=instance_create(x,y,obj_Chatbox)
             Chatmode("Jack","hello kid, Welcome to Rendonan!",1,0); 
             }
          }
       }
    
    //Alice
    if instance_exists(obj_NPCaliceTown1)
       {
       if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCaliceTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
          {
          if obj_Controller.globalqueststart=0 && obj_NPCaliceTown1.QStart=0 && obj_NPCaliceTown1.QUpdate=0
             {
             create=instance_create(x,y,obj_Chatbox)
             Chatmode("Alice","hello kid, Welcome to Rendonan!",1,0);
              }
          }
       }
    
    
    //Trainer
    if instance_exists(obj_NPCtrainerTown1)
       {
       if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCtrainerTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
          {
          if obj_Controller.globalqueststart=0 && obj_NPCtrainerTown1.QStart=0 && obj_NPCtrainerTown1.QUpdate=0 && obj_NPCtrainerTown1.QPending=0
             {
               dir = choose(1,2,3,4)
                         {
                         if dir=1{
                         create=instance_create(x,y,obj_Chatbox)
                         Chatmode("Trainer","hello kid, Welcome to Rendonan!",1,0);
                         }
             
                         if dir=2{
                         create=instance_create(x,y,obj_Chatbox)
                         Chatmode("Trainer","Good "+string(obj_Clock.tide)+string("!"),1,0);
                         }
             
                         if dir=3{
                         create=instance_create(x,y,obj_Chatbox)
                         Chatmode("Trainer","Where do you really come from actually?",1,0);
                         }
             
                         if dir=4{
                         create=instance_create(x,y,obj_Chatbox)
                         Chatmode("Trainer","Hello!",2,2);
                         }
                  }
             }
          }
       }
    
    
    //Gramps
    if instance_exists(obj_NPCgrampsTown1)
       {
       if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCgrampsTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
          {
          
          if obj_Controller.globalqueststart=0 && obj_NPCgrampsTown1.QStart=0 && obj_NPCgrampsTown1.QUpdate=0
             {
              create=instance_create(x,y,obj_Chatbox)
              Chatmode("Gramps","hello kid, Welcome to Rendonan!",1,0);
             }
          }
       }
    
    
    //Kid
    if instance_exists(obj_NPCkidTown1)
       {
       if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCkidTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
          {
          if obj_Controller.globalqueststart=0 && obj_NPCkidTown1.QStart=0 && obj_NPCkidTown1.QUpdate=0
             {
              create=instance_create(x,y,obj_Chatbox)
              Chatmode("Kid","hello kid, Welcome to Rendonan!",1,0);
             }
          }
       }
    
    
    //Oracle
    if instance_exists(obj_NPCoracleTown1)
       {
       if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCoracleTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
          {
          if obj_Controller.globalqueststart=0 && obj_NPCoracleTown1.QStart=0 && obj_NPCoracleTown1.QUpdate=0
             {
              create=instance_create(x,y,obj_Chatbox)
              Chatmode("Oracle","hello kid, Welcome to Rendonan!",1,0);
              }
          }
       }
    
}
