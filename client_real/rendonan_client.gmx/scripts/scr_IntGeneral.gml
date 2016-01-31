//test if Can start quest
var Quest;
Quest=1;
repeat(19)
{
    if obj_Controller.Questactive[Quest]=0 && obj_Controller.ownlevel >= obj_Controller.Questlevel[Quest] 
    {
         obj_Controller.Questcanstart[Quest]=1; 
    } 
    else 
    {
         obj_Controller.Questcanstart[Quest]=0; 
    }
    Quest+=1
}

var Quest, tested;
Quest=1;
tested=0;
repeat(19)
{
    if obj_Controller.Questactive[Quest] == 1
    {
         tested=1
    } 
    if Quest==20 && tested==1
    {obj_Controller.globalqueststart=1} else {obj_Controller.globalqueststart=0}     
    Quest+=1
}



//Check for close to NPC

//Set NPC data
//(town 1)
if room=room_Town1
{
    npc[1]  = obj_NPCgrannyTown1
    npc[2]  = obj_NPCgrampsTown1
    npc[3]  = obj_NPCblacksmithTown1
    npc[4]  = obj_NPCjackTown1
    npc[5]  = obj_NPCkidTown1
    npc[6]  = obj_NPCaliceTown1
    npc[7]  = obj_NPCtrainerTown1
    npc[8]  = obj_NPCoracleTown1
    
    //Start Checking
    var number;
    number=1;
    while (number <= 8)
    {
    
        if (point_distance(x,y,npc[number].x,npc[number].y) <= 40)
        {td_cantalkwith=string(npc[number])} 
        else if (td_cantalkwith=string(npc[number]) && point_distance(x,y,npc[number].x,npc[number].y) > 40)
        {td_cantalkwith='neutral'}
    
        if (td_cantalkwith != 'neutral' && td_cantalkwith!=string("obj_tdPlayer"))
        {npcnear = object_get_name(string(npc[number]))}
        else
        {npcnear = "Null"}
    
        number+=1
    }

}

//(town 2)

//(town 3)