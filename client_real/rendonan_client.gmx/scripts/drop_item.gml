/*
argument0 = can drop: coins         [1/0]    (true/false)
argument1 = droprate: coins         [0/1000] (promille)     | 1000 is 1/1000
argument2 = can drop: consumable    [1/0]    (true/false)
argument3 = droprate: consumable    [0/1000] (promille)
argument4 = can drop: equipment     [1/0]    (true/false)
argument5 = droprate: equipment     [0/1000] (promille)
argument6 = can drop: rare item     [1/0]    (true/false)
argument7 = droprate: rare item     [0/1000] (promille)
*/

//+ Reward to Player
var drop;
drop=round(random(10)); //10% drop rate
if drop=1 
    {
    create=instance_create(x,y,obj_Items)
    create.itemid=1+random(2)
    }
    
    
//Declare Variables
var dropcoins, dropconsumable, dropequipment, droprare;


if argument0=1 {dropcoins=1+round(random(argument1))}