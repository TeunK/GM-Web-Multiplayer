
/*
Include Magic Skills and Buffs on Additional Skillbar

Melee Skill List:
-/ Impale
-/ Ground Shock
-/ Energy Blast
-/ Ionball
-  Swift Edge

Magic Skill List:
-/ Meteor Strike
-/ Gale
-/ Ice Blaze
-/ Earth Spikes
-/ Ghastly Fence
-/ Inferno
-/ Sunflash


Buff List:
-/ Alleviation (heal)
-/ Wind Walk
-/ Chaperon (shield)
-/ Berserk
-/ Panoramic View (atk range ++)
-/ Taunt
-/ Panic


*/

for (i=1; i<6; i+=1)
{
    if i=1
    {
        meleename[i]="Impale";
        meleelevel[i]=3;
        meleeeffect[i]="Strikes your weapon into the crowd";
        meleedmgfx[i]="150% of strength"
        meleedamage[i]=obj_Controller.ownstrength*1.5;
        meleecooldown[i]=30*1;
        meleerange[i]=40;
        meleecost[i]=5;
    }
    
    if i=2
    {
        meleename[i]="Ground Shock";
        meleelevel[i]=6;
        meleeeffect[i]="Create a massive earthquake";
        meleedmgfx[i]="15 + 200% of strength"
        meleedamage[i]=15+obj_Controller.ownstrength*2.0;
        meleecooldown[i]=30*5;
        meleerange[i]=80;
        meleecost[i]=12;
    }
    
    if i=3
    {
        meleename[i]="Energy Blast";
        meleelevel[i]=13;
        meleeeffect[i]="Launch pure energy to throw monsters";
        meleedmgfx[i]="25 + 120% of strength"
        meleedamage[i]=25+obj_Controller.ownstrength*1.2;
        meleecooldown[i]=30*8;
        meleerange[i]=60;
        meleecost[i]=22;
    }
    
    if i=4
    {
        meleename[i]="Ion Ball";
        meleelevel[i]=16;
        meleeeffect[i]="Fire an ionball to annihilate the monsters";
        meleedmgfx[i]="50 + 160% of strength"
        meleedamage[i]=50+obj_Controller.ownstrength*1.6;
        meleecooldown[i]=30*12;
        meleerange[i]=40;
        meleecost[i]=30;
    }
    
    if i=5
    {
        meleename[i]="Swift Edge";
        meleelevel[i]=22;
        meleeeffect[i]="Swiftly run past the enemies";
        meleedmgfx[i]="240 + 250% of strength"
        meleedamage[i]=240+obj_Controller.ownstrength*2.5;
        meleecooldown[i]=30*20;
        meleerange[i]=40;
        meleecost[i]=50;
    }

}


for (i=1; i<8; i+=1)
{
    if i=1
    {
    //MAGIC
        skillname[i]="Meteor Strike";
        skilllevel[i]=4;
        skilleffect[i]="Casts a meteor onto earth.";
        skilldamage[i]=10;
        skillcooldown[i]=25*30; //25 seconds
        skillrange[i]=20;
        skillcost[i]=30;
    //BUFF
        buffname[i]="Alleviation";
        bufflevel[i]=5;
        buffeffect[i]="Heals you by 50% of your total health.";
        bufftime[i]=0; //instant (no active time)
        buffcooldown[i]=180*30; //180seconds
        buffcost[i]=40;
    }
    
    if i=2
    {
    //MAGIC
        skillname[i]="Gale";
        skilllevel[i]=7;
        skilleffect[i]="Summons a gale of wind arond the selected area.";
        skilldamage[i]=14;
        skillcooldown[i]=20*30;
        skillrange[i]=25;
        skillcost[i]=35;
    //BUFF
        buffname[i]="Wind Walk";
        bufflevel[i]=8;
        buffeffect[i]="Increases your movement speed.";
        bufftime[i]=25*30;
        buffcooldown[i]=200*30;
        buffcost[i]=25;
    }
    
    if i=3
    {
    //MAGIC
        skillname[i]="Ice Blaze";
        skilllevel[i]=10;
        skilleffect[i]="The selected area will be frozen.";
        skilldamage[i]=14;
        skillcooldown[i]=30*30;
        skillrange[i]=20;
        skillcost[i]=45;
    //BUFF
        buffname[i]="Chaperon";
        bufflevel[i]=12;
        buffeffect[i]="Summons a shield that will protect you for a certain time.";
        bufftime[i]=10*30;
        buffcooldown[i]=300*30;
        buffcost[i]=30;
    }

    if i=4
    {
    //MAGIC
        skillname[i]="Earth Spikes";
        skilllevel[i]=15;
        skilleffect[i]="Launches spikes out of the ground";
        skilldamage[i]=18;
        skillcooldown[i]=40*30;
        skillrange[i]=30;
        skillcost[i]=50;
    //BUFF
        buffname[i]="Berserk";
        bufflevel[i]=18;
        buffeffect[i]="Rage will increase your attackspeed and power.";
        bufftime[i]=15*30;
        buffcooldown[i]=300*30;
        buffcost[i]=65;
    }
    
    if i=5
    {
    //MAGIC
        skillname[i]="Ghastly fence";
        skilllevel[i]=20;
        skilleffect[i]="Creates a fence that locks everything inside.";
        skilldamage[i]=4;
        skillcooldown[i]=40*30;
        skillrange[i]=20;
        skillcost[i]=20;
    //BUFF
        buffname[i]="Panoramic view";
        bufflevel[i]=22;
        buffeffect[i]="Improved sight increases your attack range.";
        bufftime[i]=20*30;
        buffcooldown[i]=250*30;
        buffcost[i]=45;
    }
    
    if i=6
    {
    //MAGIC
        skillname[i]="Inferno";
        skilllevel[i]=24;
        skilleffect[i]="Summons a rage of fire in the selected area.";
        skilldamage[i]=4;
        skillcooldown[i]=40*30;
        skillrange[i]=40;
        skillcost[i]=80;
    //BUFF
        buffname[i]="Taunt";
        bufflevel[i]=24;
        buffeffect[i]="Aggrevates the surrounding monsters.";
        bufftime[i]=20*30;
        buffcooldown[i]=250*30;
        buffcost[i]=15;
    }
    
    if i=7
    {
    //MAGIC
        skillname[i]="Sunflash";
        skilllevel[i]=28;
        skilleffect[i]="A burst of sunrays hits the designated area.";
        skilldamage[i]=40;
        skillcooldown[i]=300*30;
        skillrange[i]=28;
        skillcost[i]=150;
    //BUFF
        buffname[i]="Panic";
        bufflevel[i]=26;
        buffeffect[i]="Makes monsters flee from you.";
        bufftime[i]=20*30;
        buffcooldown[i]=250*30;
        buffcost[i]=30;
    }
}




if obj_Controller.ownlevel=3 {}

if obj_Controller.ownlevel=5 {}

if obj_Controller.ownlevel=7 {}

if obj_Controller.ownlevel=9 {}

if obj_Controller.ownlevel=11 {}

if obj_Controller.ownlevel=13 {}
