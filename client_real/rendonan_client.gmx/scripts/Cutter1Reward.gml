    obj_Controller.ownexp += ExperienceContent;
    saypc(name +" died.",c_white);
    saypc("You earned "+string(round(ExperienceContent)) +" experience",c_lime);
    instance_create(spawnx,spawny,obj_Cutter1Spawn);
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
            itemid=20+round(random(4));
            if itemid>=22
            {
                itemid=33+round(random(4));
                if itemid>=35
                {
                    itemid=46+round(random(4));
                    if itemid>=48
                    {
                        itemid=59+round(random(4));
                        if itemid>=61
                        {
                            itemid=72+round(random(4));
                            if itemid>=74
                            {
                                itemid=85+round(random(4));
                                if itemid>=87
                                {
                                    itemid=98+round(random(1));
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
    
    
    
    
    //Quest 4
if   obj_Controller.Questactive[4] = 1 && obj_Controller.Questpart[4] = 1
{
      obj_Controller.Questkills[4,3] += 1 //slimes
      saypc("Quest: "+string(obj_Controller.Questkills[4,3])+"/15 Spinners killed so far!",c_orange);
      
      if obj_Controller.Questkills[4,3] >= 20
      {
        saypc("Quest: I've killed sufficient slimes",c_lime);
      }
      
      if obj_Controller.Questkills[4,1] >= 20 && obj_Controller.Questkills[4,2] >= 20 && obj_Controller.Questkills[4,3] >= 15
      {
        obj_Controller.Questpart[4] = 2;
        saypc("Quest: I've killed enough monsters now",c_lime);
      }
      
      if obj_Controller.Questpart[4] = 2
      {
        obj_Controller.Questhint="Return to the Trainer in Rendonan";
      }
}
if obj_Controller.Questkills[4,1] >= 20 && obj_Controller.Questkills[4,2] >= 20 && obj_Controller.Questkills[4,3] >= 15
{
    saypc("Quest: I've killed enough monsters",c_lime);
    saypc("Quest: Let's return to the trainer in Rendonan!",c_lime);
}
