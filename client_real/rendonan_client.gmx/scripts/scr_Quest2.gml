obj_NPCtrainerTown1.QStart=1;
                    obj_NPCtrainerTown1.QUpdate=0;

if room=room_Town1
{
    if instance_exists(obj_NPCtrainerTown1)
    {
        if global.quest1reward>=2                //If Quest 1 is completed
        {
            if obj_Controller.ownlevel >=  obj_Controller.Questlevel[2]
            {
                if  obj_Controller.Questactive[2] = 0 && obj_Controller.Questcanstart[2]=1
                {
                    obj_NPCtrainerTown1.QStart=1;
                    obj_NPCtrainerTown1.QUpdate=0;
                    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCtrainerTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
                    {
                        global.npc="Trainer: "
                        create=instance_create(x,y,obj_Chatbox)
                        Chatmode("Trainer","Hey, good to see you again. Let's start with your training!#Kill 40 Green Slimes and then return to me for your reward.",1,0);
                        obj_Controller.Questactive[2] = 1
                        obj_Controller.Questpart[2]=1
                        obj_Controller.Questhint[2]="Kill 40 Green Slimes"
                        obj_NPCtrainerTown1.QStart=0;
                    }
                }
                else if  obj_Controller.Questactive[2] = 1 && obj_Controller.Questpart[2]=1
                {
                    obj_NPCtrainerTown1.QPending=1;
                    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCtrainerTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
                    {
                        global.npc="Trainer: "
                        create=instance_create(x,y,obj_Chatbox)
                        Chatmode("Trainer","I see that you have killed "+ string(obj_Controller.Questkills[2,1])+string(" slimes so far.#Only ")+string((40- obj_Controller.Questkills[2,1]))+string(" more to go!"),1,0);
                    }
                }
                if  obj_Controller.Questactive[2] = 1 && obj_Controller.Questpart[2]=2
                {
                    obj_NPCtrainerTown1.QStart=0;
                    obj_NPCtrainerTown1.QUpdate=1;
                    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCtrainerTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
                    {
                        global.npc="Trainer: "
                        create=instance_create(x,y,obj_Chatbox)
                        Chatmode("Trainer","Well Done! You have killed all the slimes.#Time for the next training?",1,0);
                        global.quest2reward =   1
                        obj_Controller.Questactive[2]=2
                        obj_Controller.Questpart[2]=3
                        obj_NPCtrainerTown1.QUpdate=0;
                    }
                }
            }
        }
    }
}

if obj_Controller.Questactive[2]=1 && obj_Controller.Questpart[2]=1
{
    obj_Controller.Questhint[2] = "Kill 40 Green Slimes (" +string(obj_Controller.Questkills[2,1])+string("/40)");
}
if obj_Controller.Questactive[2]=1 && obj_Controller.Questpart[2]=2
{
    obj_Controller.Questhint[2] = "Killed all 40 slimes. Return to the trainer in Town";
}




/*


///////////////////////////////////////////////////////////////////////////////////////////
  //Define Quest Names
  //Define Quest Active
  //0 = not started; 
  //1 = active; 
  //2 = finished
  //Define Quest Start Level
  //Define Quest Part when active
  //Define Quest Hint
  //Define Quest Location
  //Define Quest Startability
  //Define Quest Reward  

  Quest[2]            = "Danger at the gate"
  Questactive[2]      = 0
  Questlevel[2]       = 1
  Questpart[2]        = 0
  Questhint[2]        = "Talk with the Trainer"
  Questlocation[2]    = "Rendonan"
  Questcanstart[2]    = 1
  Questreward[2,1]    = "75 Experience"
  Questreward[2,2]    = "20 Coins"
  Questreward[2,3]    = ""

npc.QStart, npc.QUpdate


if obj_Controller.Questactive[2]=1 && obj_Controller.Questpart[2]=x

if global.quest2reward =   1
{
           obj_Controller.questscomplete+=1
           obj_Controller.ownexp+=75
           obj_Controller.Questactive[2]=2
           obj_Controller.Questpart[2]=10
           global.quest2reward=2
}

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
           Chatmode("Granny","hello kid, Welcome to town!",2,3);
        }
        
       if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=2
       {
          create=instance_create(x,y,obj_Chatbox)
          Chatmode("Granny","Give some cookies to the kid",1,0);
          obj_Controller.Questpart[1]=3
          obj_Controller.Questhint[1]="Bring Grannies cookies to the kid"
       }
          
       if obj_Controller.Questactive[1]=1 && obj_Controller.Questpart[1]=9
       {
          create=instance_create(x,y,obj_Chatbox)
          Chatmode("Granny","Welcome back. Did the kid like them cookies?",2,4);
       }
    }