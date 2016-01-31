if room=room_Town1
{
    if instance_exists(obj_NPCtrainerTown1)
    {
        if global.quest3reward>=2                //If Quest 2 is completed
        {
            if obj_Controller.ownlevel >=  obj_Controller.Questlevel[4]
            {
                if  obj_Controller.Questactive[4] = 0// && obj_Controller.Questcanstart[4]=1
                {
                    obj_NPCtrainerTown1.QStart=1;
                    obj_NPCtrainerTown1.QUpdate=0;
                    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCtrainerTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
                    {
                        global.npc="Trainer: "
                        create=instance_create(x,y,obj_Chatbox)
                        Chatmode("Trainer","You have done a good job earlier. I Now need you#to kill 20 Green slimes, 20 Snakes and 15 Wild Cutters.",1,0);
                        obj_Controller.Questactive[4] = 1
                        obj_Controller.Questpart[4]=1
                        obj_Controller.Questhint[4]="Kill 20 Green slimes, 20 Evergreen Snakes and 15 Wild Cutters."
                        obj_NPCtrainerTown1.QStart=0;
                    }
                }
                else if  obj_Controller.Questactive[4] = 1 && obj_Controller.Questpart[4]=1
                {
                    obj_NPCtrainerTown1.QPending=1;
                    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCtrainerTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
                    {
                        global.npc="Trainer: "
                        create=instance_create(x,y,obj_Chatbox)
                        Chatmode("Trainer","I see that you have killed "+string(obj_Controller.Questkills[4,1])+string("/20 Slimes,#")+string(obj_Controller.Questkills[4,2])+string("/20 Snakes and ")+string(obj_Controller.Questkills[4,3])+string("/15 Spinners so far."));
                    }
                }
                if  obj_Controller.Questactive[4] = 1 && obj_Controller.Questpart[4]=2
                {
                    obj_NPCtrainerTown1.QStart=0;
                    obj_NPCtrainerTown1.QUpdate=1;
                    if keyboard_check_pressed(ord('J')) &&  distance_to_object(obj_NPCtrainerTown1) <=40 && !instance_exists(obj_Chatbox) && obj_ChatboxBg.delay=0
                    {
                        global.npc="Trainer: "
                        create=instance_create(x,y,obj_Chatbox)
                        Chatmode("Trainer","Nice work! Here is your reward",1,0);
                        global.quest4reward =   1
                        obj_Controller.Questactive[4]=2
                        obj_Controller.Questpart[4]=3
                        obj_NPCtrainerTown1.QUpdate=0;
                        obj_NPCtrainerTown1.QStart=0;
                        
                    }
                }
            }
        }
        if obj_Controller.Questactive[4]=2
        {
            obj_NPCtrainerTown1.QStart=0;
        }
    }
}



if obj_Controller.Questactive[4]=1 && obj_Controller.Questpart[4]=1
{
    obj_Controller.Questhint[4] = "Kill 20 Slimes, 20 Snakes and 15 Wild Cutters.";
}
if obj_Controller.Questactive[4]=1 && obj_Controller.Questpart[4]=2
{
    obj_Controller.Questhint[4] = "Killed all the monsters. Return to the trainer in Town";
}

//limiting total kills
if obj_Controller.Questkills[4,1] >= 20 {obj_Controller.Questkills[4,1]=20};
if obj_Controller.Questkills[4,2] >= 20 {obj_Controller.Questkills[4,2]=20};
if obj_Controller.Questkills[4,3] >= 15 {obj_Controller.Questkills[4,3]=15};
