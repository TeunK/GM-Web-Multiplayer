    obj_Controller.ownexp += ExperienceContent;
    saypc(name +" died.",c_white);
    saypc("You earned "+string(round(ExperienceContent)) +" experience",c_lime);
    var something;
    something=0+round(random(26))
    if something=1{instance_create(spawnx,spawny,obj_EColi1Spawn)};
    //+ Reward to Player
    var drop;
    drop=round(random(droprate)); //10% drop rate
    
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(400)) //1 to 19 = normal items, 2 to 4 are weakest potions, above 19 are equipment
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(224))}
        else if itemid >1 && itemid < 4 //potions
        {quantity=1+round(random(2));}
        
        //when drops, 1 out of 5 chance to get equipment drop, when equipment drop.. drops below
        else if itemid >= 5
        {
            itemid=21+round(random(4));
            if itemid>=23
            {
                itemid=34+round(random(4));
                if itemid>=36
                {
                    itemid=47+round(random(4));
                    if itemid>=49
                    {
                        itemid=60+round(random(4));
                        if itemid>=62
                        {
                            itemid=73+round(random(4));
                            if itemid>=75
                            {
                                itemid=86+round(random(4));
                                if itemid>=88
                                {
                                    itemid=99+round(random(1));
                                }
                            }
                        }
                    }
                }
            }
            
        quantity=1
        }
        else
        {quantity=1}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }

    
    
    /*Quest x, copy from snake - may make new quest here
    if   obj_Controller.Questactive[3] = 1 && obj_Controller.Questpart[3] = 1
    {
          obj_Controller.Questkills[3,1] += 1 //snakes
          saypc("Quest: "+string(obj_Controller.Questkills[3,1])+"/25 snakes killed so far!",c_orange);
          if obj_Controller.Questkills[3,1] >= 25
          {
            obj_Controller.Questpart[3] = 2
            saypc("Quest: I've killed sufficient snakes",c_lime);
            saypc("Quest: Let's return to the trainer in Rendonan!",c_lime);
          }
          if obj_Controller.Questpart[3] = 2
          {
            obj_Controller.Questhint="Return to the Trainer in Rendonan";
          }
    }
    if obj_Controller.Questactive[3]=1 && obj_Controller.Questpart[3]=2
    {
        saypc("Quest: I've killed sufficient snakes",c_lime);
        saypc("Quest: Let's return to the trainer in Rendonan!",c_lime);
    }