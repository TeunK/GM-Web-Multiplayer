
    obj_Controller.ownexp += ExperienceContent;
    instance_create(spawnx,spawny,obj_Snake1Spawn);
    //saypc(name +string(" died. You earned ") +string(round(ExperienceContent)) +string(" experience."));
    saypc(name +" died.",c_white);
    saypc("You earned " +string(round(ExperienceContent)) +" experience",c_lime);
    
    //+ Reward to Player
    var drop;
    drop=round(random(droprate)); //12% drop rate
    
    
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(5))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(96))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(1));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=1}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    
    //Quest 3
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
    
    //Quest 4
if   obj_Controller.Questactive[4] = 1 && obj_Controller.Questpart[4] = 1
{
      obj_Controller.Questkills[4,2] += 1 //snakes
      saypc("Quest: "+string(obj_Controller.Questkills[4,2])+"/20 Snakes killed so far!",c_orange);
      
      if obj_Controller.Questkills[4,2] >= 20
      {
        saypc("Quest: I've killed sufficient snakes",c_lime);
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
