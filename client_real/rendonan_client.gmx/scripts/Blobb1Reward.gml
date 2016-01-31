obj_Controller.ownexp += ExperienceContent;
//saypc(name +string(" died. You earned ") +string(round(ExperienceContent)) +string(" experience."));
saypc(name +" died.",c_white);
saypc("You earned " +string(round(ExperienceContent)) +" experience",c_lime);
instance_create(spawnx,spawny,obj_Blobb1Spawn);
//+ Reward to Player
var drop;
drop=round(random(droprate)); //10% drop rate
if drop=1 
{
    //Item ID drop range
    var itemid, quantity;
    itemid = 1 + round(random(2))

    //Define quantity of drop
    if itemid == 1 //coins
    {quantity = 1 + round(random(58))}
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




//Quest 2
if   obj_Controller.Questactive[2] = 1 && obj_Controller.Questpart[2] = 1
{
      obj_Controller.Questkills[2,1] += 1 //slimes
      saypc("Quest: "+string(obj_Controller.Questkills[2,1])+"/40 slimes killed so far!",c_orange);
      if obj_Controller.Questkills[2,1] >= 40
      {
        obj_Controller.Questpart[2] = 2
        saypc("Quest: I've killed sufficient slimes",c_lime);
        saypc("Quest: Let's return to the trainer in Rendonan!",c_lime);
      }
      if obj_Controller.Questpart[2] = 2
      {
        obj_Controller.Questhint="Return to the Trainer in Rendonan";
      }
}
if obj_Controller.Questactive[2]=1 && obj_Controller.Questpart[2]=2
{
    saypc("Quest: I've killed sufficient slimes",c_lime);
    saypc("Quest: Let's return to the trainer in Rendonan!",c_lime);
}

//Quest 4
if   obj_Controller.Questactive[4] = 1 && obj_Controller.Questpart[4] = 1
{
      obj_Controller.Questkills[4,1] += 1 //slimes
      saypc("Quest: "+string(obj_Controller.Questkills[4,1])+"/20 slimes killed so far!",c_orange);
      
      if obj_Controller.Questkills[4,1] >= 20
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







