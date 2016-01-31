//room Town1
if room=room_Town1
{


    /***************************************************
      ################## GRANNY ########################
     ***************************************************/
    if instance_exists(obj_NPCgrannyTown1)
    {
    
        //QStart draws ! mark
        if obj_Controller.Questactive[1]=0
        {obj_NPCgrannyTown1.QStart=1} else {obj_NPCgrannyTown1.QStart=0}
        
        //QUpdate draws ? mark
        if obj_Controller.Questactive[1]=1 && (obj_Controller.Questpart[1]=2 || obj_Controller.Questpart[1]=9)
        {obj_NPCgrannyTown1.QUpdate=1} else {obj_NPCgrannyTown1.QUpdate=0}
        
        
        if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCgrannyTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
        {
        
        
            global.npc="Granny:"
            //QUEST 1
            if obj_Controller.Questcanstart[1]=1
            {
               create=instance_create(x,y,obj_Chatbox)
               Chatmode("Granny","Hi there! So you're the one that fell out of the sky?#I am very curious what stories you have to tell me.",3,3);
            }
            
           if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=2
           {
              create=instance_create(x,y,obj_Chatbox)
              Chatmode("Granny","See I told you he is nice. Here you have some cookies.#Bring them to 'kid'. He is quite an expert at mechanics!",1,0);
              obj_Controller.Questpart[1]=3
              obj_Controller.Questhint[1]="Bring Grannies cookies to the kid"
           }
              
           if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=9
           {
              create=instance_create(x,y,obj_Chatbox)
              Chatmode("Granny","Welcome back. I assume you now know where to find people.#I shall give you a wooden sword so you can practice.",2,4);
              
              //this=instance_create(obj_NPCgrannyTown1.x,obj_NPCgrannyTown1.y,obj_Items);
              //this.itemid=136;
           }
        }
    }
    
    /***************************************************
      ################ BLACKSMITH ######################
     ***************************************************/
    if instance_exists(obj_NPCblacksmithTown1)
    {
    if obj_Controller.Questactive[1]=1 && (obj_Controller.Questpart[1]=4)
    {obj_NPCblacksmithTown1.QUpdate=1} else {obj_NPCblacksmithTown1.QUpdate=0}
    
    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCblacksmithTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
    {
    
    global.npc="Blacksmith:"
    //QUEST 1
       if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=4
          {
          create=instance_create(x,y,obj_Chatbox)
          Chatmode("Blacksmith","Thanks mate!",2,5);
          }
       }
    }
    
    
    /***************************************************
      ################## JACK ########################
     ***************************************************/
    if instance_exists(obj_NPCjackTown1)
    {
    if obj_Controller.Questactive[1]=1 && (obj_Controller.Questpart[1]=1)
    {obj_NPCjackTown1.QUpdate=1} else {obj_NPCjackTown1.QUpdate=0}
    
    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCjackTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
       {
    
    global.npc="Jack:"
    //QUEST 1
       if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=1
          {
          create=instance_create(x,y,obj_Chatbox)
          Chatmode("Jack","So Granny sent you huh? That's nice of her. I shall#help you enhancing your gear later. Go tell Granny that :)",1,0);
          obj_Controller.Questpart[1]=2
          obj_Controller.Questhint[1]="Return to Granny"
          }
       }    
    }
    
    /***************************************************
      ################## ALICE ########################
     ***************************************************/
    if instance_exists(obj_NPCaliceTown1)
    {
    if obj_Controller.Questactive[1]=1 && (obj_Controller.Questpart[1]=6)
    {obj_NPCaliceTown1.QUpdate=1} else {obj_NPCaliceTown1.QUpdate=0}
    
    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCaliceTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
       {
    
    global.npc="Alice:"
    //QUEST 1  
       if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=6
          {
          create=instance_create(x,y,obj_Chatbox)
          Chatmode("Alice","Oh hi there!",3,6);
          }
       }
    }
    
    
    /***************************************************
      ################## TRAINER ########################
     ***************************************************/
    if instance_exists(obj_NPCtrainerTown1)
    {
        if obj_Controller.Questactive[1]=1
        {
            if obj_Controller.Questpart[1]=5
            {
                obj_NPCtrainerTown1.QUpdate=1
            }
            else
            {
                obj_NPCtrainerTown1.QUpdate=0
            }
        }
        
        if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCtrainerTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
        {
        
            global.npc="Trainer:"
            //QUEST 1
            if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=5
            {
                  create=instance_create(x,y,obj_Chatbox)
                  Chatmode("Trainer","Cheers! I was wondering when my sword would be finished.",3,7);
            }
        }
    }
    
    
    /***************************************************
      ################## GRAMPS ########################
     ***************************************************/
    if instance_exists(obj_NPCgrampsTown1)
    {
    if obj_Controller.Questactive[1]=1 && (obj_Controller.Questpart[1]=8)
    {obj_NPCgrampsTown1.QUpdate=1} else {obj_NPCgrampsTown1.QUpdate=0}
    
    
    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCgrampsTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
       {
    
    global.npc="Gramps:"
    //QUEST 1
       if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=8
          {
          create=instance_create(x,y,obj_Chatbox)
          Chatmode("Gramps","Hey, I heard Granny is looking for you",2,8);
          }
       }
    }
    
    
    /***************************************************
      ################## KID ########################
     ***************************************************/
    if instance_exists(obj_NPCkidTown1)
    {
    if obj_Controller.Questactive[1]=1 && (obj_Controller.Questpart[1]=3)
    {obj_NPCkidTown1.QUpdate=1} else {obj_NPCkidTown1.QUpdate=0}
    
    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCkidTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
       {
    
    global.npc="Kid:"
    //QUEST 1
       if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=3
          {
          create=instance_create(x,y,obj_Chatbox)
          Chatmode("Kid","Cool, thanks! I love Grannies cookies. BTW, did you see#my last creation: guard tower? It can be found here in Town",2,9);
          }
       }
    }
    
    
    /***************************************************
      ################## ORACLE ########################
     ***************************************************/
    if instance_exists(obj_NPCoracleTown1)
    {
    if obj_Controller.Questactive[1]=1 && (obj_Controller.Questpart[1]=7)
    {obj_NPCoracleTown1.QUpdate=1} else {obj_NPCoracleTown1.QUpdate=0}
    
    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCoracleTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
       {
    
    global.npc="Oracle:"
    //QUEST 1
       if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=7
          {
          create=instance_create(x,y,obj_Chatbox)
          Chatmode("Oracle","You shall be an important person one day",4,10);
          }
       }
    }

}
