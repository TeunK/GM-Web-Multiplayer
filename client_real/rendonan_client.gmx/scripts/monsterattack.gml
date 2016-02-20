//argument0 = 0 for attack on monster, 1 for attack on player;
//argument1 = 0 for no skill, 1 for skill 1, 2 for skill 2 etc.


//attack on monster
if argument0 = 0
{
    //Declare variables
    var defencenumber;
    defencenumber = (1-sqrt(0.001*defence));
    if defencenumber <= 0 {defencenumber = 0.001}    
    
    //no skill
    if argument1 = 0
    {
        hit = round(defencenumber*(obj_Controller.ownmindamage+random(obj_Controller.owndeltadamage)))
        if hit <= 0 {hit=1}
    }
    
    //impale
    if argument1 = 1
    {
        hit = round(defencenumber*(obj_Controller.ownmindamage+random(obj_Controller.owndeltadamage)))
        if hit <= 0 {hit=1}
    }
    
    //ground shock
    if argument1 = 2
    {
        hit = 2+round(0.2*defencenumber*(obj_Controller.ownmindamage+random(obj_Controller.owndeltadamage)))
        if hit <= 0 {hit=1}
    }
    
    //Energy Blast
    if argument1 = 3
    {
        hit=10+round(0.4*defencenumber*(obj_Controller.ownmindamage+random(obj_Controller.owndeltadamage)))
        if hit <=0 {hit=1}
    }

    
    return hit    
}


//attack on player
else if argument0 = 1
{
    //Declare variables
    var hurt, playerdefencenumber;
    playerdefencenumber = (1-sqrt(0.001*obj_Controller.defence));
    if playerdefencenumber <= 0 {defencenumber = 0.001}
    
    if argument1 = 0
    {
        //hurt = attack*(1-sqrt(0.001*obj_Controller.defence));
        hurt = round(playerdefencenumber*(0.8*attack+random(0.4*attack)));
        if hurt <= 0 {hurt=1}
        obj_Controller.ownhealth-=hurt
        saypc(name +string(" hit you for ") +string(hurt) +string(" damage."),c_red);
    }
}
