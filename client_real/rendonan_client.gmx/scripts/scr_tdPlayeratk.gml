//Linking data from controller to tdPlayer
//attackspeed=obj_Controller.attackspeed, attackspeed of n is n times faster.
learnchain1=obj_Controller.learnchain1
attackrange=obj_Controller.attackrange

//Main attack
//atktimemax=30*(1.1^(-1*attackspeed));
//atktimemax=round(30*power(1.1,-attackspeed))
if chain1 <=1 {atktimemax=round(30/attackspeed)}


if chain1>1
{cooldown+=1}
if cooldown >=20 {chain1=1; atktime=atktimemax; cooldown=0}

atktime-=1
if atktime <=0  {atktime=0}

    draw_circle(x,y,attackrange,1)


    //Reset Hitting Count
    if hitting=1 {hitting=0}

if !instance_exists(obj_Chatbox) || obj_Controller.typing!=1 {canhit=1} else {canhit=0}    
    
if canhit=1
{    
        
    //ATTACKS CHAIN1
    //chain1 = 1
    if keyboard_check_pressed(ord('J')) && atktime <=0 && learnchain1>=1 && chain1=1 && hitting=0
    {
        //attack 1
        instance_create(x,y,obj_Slash1);
        if sound_isplaying(global.fx_Sweep2) {sound_stop(global.fx_Sweep2)}
        SS_PlaySound(global.fx_Sweep2);
        hitting=1
        if learnchain1>=2
        {chain1+=1; atktimemax=round(10/attackspeed)} else {chain1=1; atktimemax=round(30/attackspeed)}
        atktime=atktimemax
        cooldown=0;
    }
    
    //chain1 = 2
    if keyboard_check_pressed(ord('J')) && atktime <=0 && learnchain1>=2 && chain1=2 && hitting=0
    {
        //attack 2
        instance_create(x,y,obj_Slash1);
        if sound_isplaying(global.fx_Sweep2) {sound_stop(global.fx_Sweep2)}
        SS_PlaySound(global.fx_Sweep2);
        hitting=1
        if learnchain1>=3
        {chain1+=1; atktimemax=round(7/attackspeed)} else {chain1=1; atktimemax=round(30/attackspeed)}
        atktime=atktimemax
        cooldown=0;
    }
    
    //chain1 = 3
    if keyboard_check_pressed(ord('J')) && atktime <=0 && learnchain1>=3 && chain1=3 && hitting=0
    {
        //attack 3
        instance_create(x,y,obj_Slash1);
        if sound_isplaying(global.fx_Sweep2) {sound_stop(global.fx_Sweep2)}
        SS_PlaySound(global.fx_Sweep2);
        hitting=1
        if learnchain1>=4
        {chain1+=1; atktimemax=round(5/attackspeed)} else {chain1=1; atktimemax=round(30/attackspeed)}
        atktime=atktimemax
        cooldown=0;
    }
    
    //chain1 = 4
    if keyboard_check_pressed(ord('J')) && atktime <=0 && learnchain1>=4 && chain1=4 && hitting=0
    {
        //attack 4
        instance_create(x,y,obj_Slash1);
        if sound_isplaying(global.fx_Sweep2) {sound_stop(global.fx_Sweep2)}
        SS_PlaySound(global.fx_Sweep2);
        hitting=1
        if learnchain1>=5
        {chain1+=1; atktimemax=round(3/attackspeed)} else {chain1=1; atktimemax=round(30/attackspeed)}
        atktime=atktimemax
        cooldown=0;
    }
}