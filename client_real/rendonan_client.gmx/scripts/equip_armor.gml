//argument0 = item ID
//argument1 = equip/unequip, equip=1; unequip=0;
//argument2 = object name to define slot type when picking up, eg for s_Earring

/*
ownhealthtotal  =   0;
ownsptotal      =   0;
ownstrength     =   0;
attackrange     =   0;
agility         =   0;
defence         =   0;
weapondamage    =   0;
attackspeed     =   0;
learnchain1     =   0;
*/


/***************************************************
  ---------------- TOP ARMOR ---------------------
 ***************************************************/
if argument1=1
{
    //define itemID in the slot
    argument2.itemID=argument0
    
    if argument0=20
    {
     ////iteminfo  = "Adds 4 Defence and 35 Health";
     obj_Controller.armor_top=1
     obj_Controller.ownhealthtotal+=35;
     obj_Controller.defence+=4
    }
    
    else if argument0=21
    {
     ////iteminfo  = "Adds 9 Defence and 60 Health";
     obj_Controller.armor_top=2
     obj_Controller.ownhealthtotal+=60;
     obj_Controller.defence+=9
    }
    
    else if argument0=22
    {
     ////iteminfo  = "Adds 21 Defence and 145 Health";
     obj_Controller.armor_top=3
     obj_Controller.ownhealthtotal+=145;
     obj_Controller.defence+=21
    }
    
    else if argument0=23
    {
     ////iteminfo  = "Adds 45 Defence and 220 Health";
     obj_Controller.armor_top=4
     obj_Controller.ownhealthtotal+=220;
     obj_Controller.defence+=45
    }
    
    else if argument0=24
    {
     ////iteminfo  = "Adds 90 Defence and 550 Health";
     obj_Controller.armor_top=5
     obj_Controller.ownhealthtotal+=550;
     obj_Controller.defence+=90
    }
    
    else if argument0=25
    {
     ////iteminfo  = "Adds 150 Defence and 1100 Health";
     obj_Controller.armor_top=6
     obj_Controller.ownhealthtotal+=1100;
     obj_Controller.defence+=150
    }
    
    else if argument0=26
    {
     ////iteminfo  = "Adds 8 Defence and 60 Health";
     obj_Controller.armor_top=1
     obj_Controller.ownhealthtotal+=60;
     obj_Controller.defence+=8
    }
    
    else if argument0=27
    {
     ////iteminfo  = "Adds 14 Defence and 100 Health";
     obj_Controller.armor_top=2
     obj_Controller.ownhealthtotal+=100;
     obj_Controller.defence+=14
    }
    
    else if argument0=28
    {
     ////iteminfo  = "Adds 30 Defence and 220 Health";
     obj_Controller.armor_top=3
     obj_Controller.ownhealthtotal+=220;
     obj_Controller.defence+=30
    }
    
    else if argument0=29
    {
     ////iteminfo  = "Adds 58 Defence and 290 Health";
     obj_Controller.armor_top=4
     obj_Controller.ownhealthtotal+=290;
     obj_Controller.defence+=58
    }
    
    else if argument0=30
    {
     ////iteminfo  = "Adds 110 Defence and 800 Health";
     obj_Controller.armor_top=5
     obj_Controller.ownhealthtotal+=800;
     obj_Controller.defence+=110
    }
    
    else if argument0=31
    {
     ////iteminfo  = "Adds 200 Defence and 2000 Health";
     obj_Controller.armor_top=6
     obj_Controller.ownhealthtotal+=2000;
     obj_Controller.defence+=200
    }

    else if argument=32
    {
    obj_Controller.armor_top=7
    obj_Controller.ownhealthtotal+=1000000000
    obj_Controller.defence+=99999
    }

    
    /***************************************************
      SEQUAL
    /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Head)
     ******************************************************************************************************/
    else if argument0=33
    {
    //iteminfo  = "Adds 2 Defence and 20 Health";
    obj_Controller.defence+=2;
    obj_Controller.ownhealthtotal+=20;
    }
    
    else if argument0=34
    {
    //iteminfo  = "Adds 5 Defence and 35 Health";
    obj_Controller.defence+=5;
    obj_Controller.ownhealthtotal+=35;
    }
    
    else if argument0=35
    {
    obj_Controller.defence+=8;
    obj_Controller.ownhealthtotal+=60;
     //iteminfo  = "Adds 8 Defence and 60 Health";
    }
    
    else if argument0=36
    {
    obj_Controller.defence+=14;
    obj_Controller.ownhealthtotal+=120;
     //iteminfo  = "Adds 14 Defence and 120 Health";
    }
    
    else if argument0=37
    {
    obj_Controller.defence+=50;
    obj_Controller.ownhealthtotal+=200;
     //iteminfo  = "Adds 50 Defence and 200 Health";
    }
    
    else if argument0=38
    {
    obj_Controller.defence+=70;
    obj_Controller.ownhealthtotal+=300;
     //iteminfo  = "Adds 70 Defence and 300 Health";
    }
    
    else if argument0=39
    {
    obj_Controller.defence+=4;
    obj_Controller.ownhealthtotal+=50;
     //iteminfo  = "Adds 4 Defence and 50 Health";
    }
    
    else if argument0=40
    {
    obj_Controller.defence+=6;
    obj_Controller.ownhealthtotal+=80;
     //iteminfo  = "Adds 6 Defence and 80 Health";
    }
    
    else if argument0=41
    {
    obj_Controller.defence+=10;
    obj_Controller.ownhealthtotal+=120;
     //iteminfo  = "Adds 10 Defence and 120 Health";
    }
    
    else if argument0=42
    {
    obj_Controller.defence+=25;
    obj_Controller.ownhealthtotal+=160;
     //iteminfo  = "Adds 25 Defence and 160 Health";
    }
    
    else if argument0=43
    {
    obj_Controller.defence+=55;
    obj_Controller.ownhealthtotal+=230;
     //iteminfo  = "Adds 55 Defence and 230 Health";
    }
    
    else if argument0=44
    {
    obj_Controller.defence+=80;
    obj_Controller.ownhealthtotal+=400;
     //iteminfo  = "Adds 80 Defence and 400 Health";
    }
    
    else if argument0=45
    {
    obj_Controller.defence+=99999;
    obj_Controller.ownhealthtotal+=1000000000;
     //iteminfo  = "Adds 99999 Defence and 1000000000 Health";
    }
     
     
    /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Shoulders)
                ownhealthtotal = real(buffer_read_string(buffer));
                ownsptotal = real(buffer_read_string(buffer));         
                ownstrength = real(buffer_read_string(buffer));
                attackrange = real(buffer_read_string(buffer));
                agility = real(buffer_read_string(buffer));
                defence = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                attackspeed = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
     else if argument0=46
    {
    obj_Controller.agility+=2;
    obj_Controller.ownstrength+=3;
     //iteminfo  = "Adds 2 Agility and 3 Strength";
    }
    
    else if argument0=47
    {
    obj_Controller.agility+=5;
    obj_Controller.ownstrength+=7;
     //iteminfo  = "Adds 5 Agility and 7 Strength";
    }
    
    else if argument0=48
    {
    obj_Controller.agility+=8;
    obj_Controller.ownstrength+=15;
     //iteminfo  = "Adds 8 Agility and 15 Strength";
    }
    
    else if argument0=49
    {
    obj_Controller.agility+=14;
    obj_Controller.ownstrength+=24;
     //iteminfo  = "Adds 14 Agility and 24 Strength";
    }
    
    else if argument0=50
    {
    obj_Controller.agility+=50;
    obj_Controller.ownstrength+=75;
     //iteminfo  = "Adds 50 Agility and 75 Strength";
    }
    
    else if argument0=51
    {
    obj_Controller.agility+=70;
    obj_Controller.ownstrength+=115;
     //iteminfo  = "Adds 70 Agility and 115 Strength";
    }
    
     else if argument0=52
    {
    obj_Controller.agility+=3;
    obj_Controller.ownstrength+=5;
     //iteminfo  = "Adds 3 Agility and 5 Strength";
    }
    
    else if argument0=53
    {
    obj_Controller.agility+=9;
    obj_Controller.ownstrength+=11;
     //iteminfo  = "Adds 9 Agility and 11 Strength";
    }
    
    else if argument0=54
    {
    obj_Controller.agility+=12;
    obj_Controller.ownstrength+=22;
     //iteminfo  = "Adds 12 Agility and 22 Strength";
    }
    
    else if argument0=55
    {
    obj_Controller.agility+=20;
    obj_Controller.ownstrength+=31;
     //iteminfo  = "Adds 20 Agility and 31 Strength";
    }
    
    else if argument0=56
    {
    obj_Controller.agility+=66;
    obj_Controller.ownstrength+=94;
     //iteminfo  = "Adds 66 Agility and 94 Strength";
    }
    
    else if argument0=57
    {
    obj_Controller.agility+=100;
    obj_Controller.ownstrength+=145;
     //iteminfo  = "Adds 100 Agility and 145 Strength";
    }
     
    else if argument0=58
    {
    obj_Controller.agility+=99999;
    obj_Controller.ownstrength+=99999;
     //iteminfo  = "Adds 99999 Agility and 99999 Strength";
    }
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Gloves)
                ownhealthtotal = real(buffer_read_string(buffer));
                ownsptotal = real(buffer_read_string(buffer));         
                ownstrength = real(buffer_read_string(buffer));
                attackrange = real(buffer_read_string(buffer));
                agility = real(buffer_read_string(buffer));
                defence = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                attackspeed = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
    else if argument0=59
    {
    obj_Controller.attackrange+=5;
    obj_Controller.ownstrength+=2;
     //iteminfo  = "Adds 5 Attack-range and 2 Strength";
    }
    
    else if argument0=60
    {
    obj_Controller.attackrange+=12;
    obj_Controller.ownstrength+=5;
     //iteminfo  = "Adds 12 Attack-range and 5 Strength";
    }
    
    else if argument0=61
    {
    obj_Controller.attackrange+=22;
    obj_Controller.ownstrength+=12;
     //iteminfo  = "Adds 22 Attack-range and 12 Strength";
    }
    
    else if argument0=62
    {
    obj_Controller.attackrange+=30;
    obj_Controller.ownstrength+=16;
     //iteminfo  = "Adds 30 Attack-range and 16 Strength";
    }
    
    else if argument0=63
    {
    obj_Controller.attackrange+=40;
    obj_Controller.ownstrength+=60;
     //iteminfo  = "Adds 40 Attack-range and 60 Strength";
    }
    
    else if argument0=64
    {
    obj_Controller.attackrange+=55;
    obj_Controller.ownstrength+=94;
     //iteminfo  = "Adds 55 Attack-range and 94 Strength";
    }
    
    else if argument0=65
    {
    obj_Controller.attackrange+=7;
    obj_Controller.ownstrength+=3;
     //iteminfo  = "Adds 7 Attack-range and 3 Strength";
    }
    
    else if argument0=66
    {
    obj_Controller.attackrange+=15;
    obj_Controller.ownstrength+=7;
     //iteminfo  = "Adds 15 Attack-range and 7 Strength";
    }
    
    else if argument0=67
    {
    obj_Controller.attackrange+=26;
    obj_Controller.ownstrength+=15;
     //iteminfo  = "Adds 26 Attack-range and 15 Strength";
    }
    
    else if argument0=68
    {
    obj_Controller.attackrange+=35;
    obj_Controller.ownstrength+=20;
     //iteminfo  = "Adds 35 Attack-range and 20 Strength";
    }
    
    else if argument0=69
    {
    obj_Controller.attackrange+=50;
    obj_Controller.ownstrength+=70;
     //iteminfo  = "Adds 50 Attack-range and 70 Strength";
    }
    
    else if argument0=70
    {
    obj_Controller.attackrange+=62;
    obj_Controller.ownstrength+=100;
     //iteminfo  = "Adds 62 Attack-range and 100 Strength";
    }
    
    else if argument0=71
    {
    obj_Controller.attackrange+=99999;
    obj_Controller.ownstrength+=99999;
     //iteminfo  = "Adds 99999 Attack-range and 99999 Strength";
    }
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Vambraces)
                ownhealthtotal = real(buffer_read_string(buffer));
                ownsptotal = real(buffer_read_string(buffer));         
                ownstrength = real(buffer_read_string(buffer));
                attackrange = real(buffer_read_string(buffer));
                agility = real(buffer_read_string(buffer));
                defence = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                attackspeed = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
     //argument0=72
    else if argument0=72
    {
    obj_Controller.attackspeed+=0.02;
    obj_Controller.defence+=2;
     //iteminfo  = "Adds 0.02 Attack-speed and 2 Defence";
    }
    
    else if argument0=73
    {
    obj_Controller.attackspeed+=0.12;
    obj_Controller.defence+=5;
     //iteminfo  = "Adds 0.12 Attack-speed and 5 Defence";
    }
    
    else if argument0=74
    {
    obj_Controller.attackspeed+=0.22;
    obj_Controller.defence+=12;
     //iteminfo  = "Adds 0.22 Attack-speed and 12 Defence";
    }
    
    else if argument0=75
    {
    obj_Controller.attackspeed+=0.30;
    obj_Controller.defence+=16;
     //iteminfo  = "Adds 0.30 Attack-speed and 16 Defence";
    }
    
    else if argument0=76
    {
    obj_Controller.attackspeed+=0.40;
    obj_Controller.defence+=35;
     //iteminfo  = "Adds 0.40 Attack-speed and 35 Defence";
    }
    
    else if argument0=77
    {
    obj_Controller.attackspeed+=0.55;
    obj_Controller.defence+=45;
     //iteminfo  = "Adds 0.55 Attack-speed and 45 Defence";
    }
    
    else if argument0=78
    {
    obj_Controller.attackspeed+=0.04;
    obj_Controller.defence+=3;
     //iteminfo  = "Adds 0.04 Attack-speed and 3 Defence";
    }
    
    else if argument0=79
    {
    obj_Controller.attackspeed+=0.15;
    obj_Controller.defence+=7;
     //iteminfo  = "Adds 0.15 Attack-speed and 7 Defence";
    }
    
    else if argument0=80
    {
    obj_Controller.attackspeed+=0.25;
    obj_Controller.defence+=15;
     //iteminfo  = "Adds 0.25 Attack-speed and 15 Defence";
    }
    
    else if argument0=81
    {
    obj_Controller.attackspeed+=0.34;
    obj_Controller.defence+=18;
     //iteminfo  = "Adds 0.34 Attack-speed and 18 Defence";
    }
    
    else if argument0=82
    {
    obj_Controller.attackspeed+=0.45;
    obj_Controller.defence+=42;
     //iteminfo  = "Adds 0.45 Attack-speed and 42 Defence";
    }
    
    else if argument0=83
    {
    obj_Controller.attackspeed+=0.60;
    obj_Controller.defence+=58;
     //iteminfo  = "Adds 0.60 Attack-speed and 58 Defence";
    }
    
    else if argument0=84
    {
    obj_Controller.attackspeed+=5;
    obj_Controller.defence+=99999;
     //iteminfo  = "Adds 5 Attack-speed and 99999 Defence";
    }
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Legs)
                ownhealthtotal = real(buffer_read_string(buffer));
                ownsptotal = real(buffer_read_string(buffer));         
                ownstrength = real(buffer_read_string(buffer));
                attackrange = real(buffer_read_string(buffer));
                agility = real(buffer_read_string(buffer));
                defence = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                attackspeed = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
     //argument0=85
    else if argument0=85
    {
    obj_Controller.defence+=2;
    obj_Controller.ownhealthtotal+=20;
     //iteminfo  = "Adds 2 Defence and 20 Health";
    }
    
    else if argument0=86
    {
    obj_Controller.defence+=5;
    obj_Controller.ownhealthtotal+=35;
     //iteminfo  = "Adds 5 Defence and 35 Health";
    }
    
    else if argument0=87
    {
    obj_Controller.defence+=8;
    obj_Controller.ownhealthtotal+=60;
     //iteminfo  = "Adds 8 Defence and 60 Health";
    }
    
    else if argument0=88
    {
    obj_Controller.defence+=14;
    obj_Controller.ownhealthtotal+=120;
     //iteminfo  = "Adds 14 Defence and 120 Health";
    }
    
    else if argument0=89
    {
    obj_Controller.defence+=50;
    obj_Controller.ownhealthtotal+=200;
     //iteminfo  = "Adds 50 Defence and 200 Health";
    }
    
    else if argument0=90
    {
    obj_Controller.defence+=70;
    obj_Controller.ownhealthtotal+=300;
     //iteminfo  = "Adds 70 Defence and 300 Health";
    }
    
    else if argument0=91
    {
    obj_Controller.defence+=4;
    obj_Controller.ownhealthtotal+=50;
     //iteminfo  = "Adds 4 Defence and 50 Health";
    }
    
    else if argument0=92
    {
    obj_Controller.defence+=6;
    obj_Controller.ownhealthtotal+=80;
     //iteminfo  = "Adds 6 Defence and 80 Health";
    }
    
    else if argument0=93
    {
    obj_Controller.defence+=10;
    obj_Controller.ownhealthtotal+=120;
     //iteminfo  = "Adds 10 Defence and 120 Health";
    }
    
    else if argument0=94
    {
    obj_Controller.defence+=25;
    obj_Controller.ownhealthtotal+=160;
     //iteminfo  = "Adds 25 Defence and 160 Health";
    }
    
    else if argument0=95
    {
    obj_Controller.defence+=55;
    obj_Controller.ownhealthtotal+=230;
     //iteminfo  = "Adds 55 Defence and 230 Health";
    }
    
    else if argument0=96
    {
    obj_Controller.defence+=80;
    obj_Controller.ownhealthtotal+=400;
     //iteminfo  = "Adds 80 Defence and 400 Health";
    }
    
    else if argument0=97
    {
    obj_Controller.defence+=99999;
    obj_Controller.ownhealthtotal+=1000000000;
     //iteminfo  = "Adds 99999 Defence and 1000000000 Health";
    }
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Boots)
                ownhealthtotal = real(buffer_read_string(buffer));
                ownsptotal = real(buffer_read_string(buffer));         
                ownstrength = real(buffer_read_string(buffer));
                attackrange = real(buffer_read_string(buffer));
                agility = real(buffer_read_string(buffer));
                defence = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                attackspeed = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
     //argument0=98
     else if argument0=98
    {
    obj_Controller.agility+=2;
    obj_Controller.ownstrength+=1;
     //iteminfo  = "Adds 2 Agility and 1 Strength";
    }
    
    else if argument0=99
    {
    obj_Controller.agility+=5;
    obj_Controller.ownstrength+=3;
     //iteminfo  = "Adds 5 Agility and 3 Strength";
    }
    
    else if argument0=100
    {
    obj_Controller.agility+=8;
    obj_Controller.ownstrength+=5;
     //iteminfo  = "Adds 8 Agility and 5 Strength";
    }
    
    else if argument0=101
    {
    obj_Controller.agility+=14;
    obj_Controller.ownstrength+=10;
     //iteminfo  = "Adds 14 Agility and 10 Strength";
    }
    
    else if argument0=102
    {
    obj_Controller.agility+=50;
    obj_Controller.ownstrength+=14;
     //iteminfo  = "Adds 50 Agility and 14 Strength";
    }
    
    else if argument0=103
    {
    obj_Controller.agility+=70;
    obj_Controller.ownstrength+=22;
     //iteminfo  = "Adds 70 Agility and 22 Strength";
    }
    
     else if argument0=104
    {
    obj_Controller.agility+=3;
    obj_Controller.ownstrength+=2;
     //iteminfo  = "Adds 3 Agility and 2 Strength";
    }
    
    else if argument0=105
    {
    obj_Controller.agility+=9;
    obj_Controller.ownstrength+=5;
     //iteminfo  = "Adds 9 Agility and 5 Strength";
    }
    
    else if argument0=106
    {
    obj_Controller.agility+=12;
    obj_Controller.ownstrength+=9;
     //iteminfo  = "Adds 12 Agility and 9 Strength";
    }
    
    else if argument0=107
    {
    obj_Controller.agility+=20;
    obj_Controller.ownstrength+=16;
     //iteminfo  = "Adds 20 Agility and 16 Strength";
    }
    
    else if argument0=108
    {
    obj_Controller.agility+=66;
    obj_Controller.ownstrength+=20;
     //iteminfo  = "Adds 66 Agility and 20 Strength";
    }
    
    else if argument0=109
    {
    obj_Controller.agility+=100;
    obj_Controller.ownstrength+=25;
     //iteminfo  = "Adds 100 Agility and 25 Strength";
    }
     
    else if argument0=110
    {
    obj_Controller.agility+=99999;
    obj_Controller.ownstrength+=99999;
     //iteminfo  = "Adds 99999 Agility and 99999 Strength";
    }
     
     /******************************************************************************************************
      ////////////////// Equipment Collection (Earrings | ring1 | ring2 | ring3 | ring4)
     ******************************************************************************************************/
     //argument0=111
    else if argument0=111 || argument0=116 || argument0=121 || argument0=126 || argument0=131
    {
    obj_Controller.agility+=1;
    obj_Controller.ownstrength+=1;
    obj_Controller.defence+=1;
    obj_Controller.attackspeed+=0.01;
    obj_Controller.attackrange+=2;
    obj_Controller.ownhealthtotal+=5;
    obj_Controller.ownsptotal+=5;
     //iteminfo  = "Adds 1 Agility, 1 Strength, 1 Defence#0.01 Attack-speed, 2 Attack-range, 5 Health#and 5 Stamina.";
    }
    
    else if argument0=112 || argument0=117 || argument0=122 || argument0=127 || argument0=132
    {
    obj_Controller.agility+=2;
    obj_Controller.ownstrength+=2;
    obj_Controller.defence+=2;
    obj_Controller.attackspeed+=0.02;
    obj_Controller.attackrange+=4;
    obj_Controller.ownhealthtotal+=15;
    obj_Controller.ownsptotal+=15;
     //iteminfo  = "Adds 2 Agility, 2 Strength, 2 Defence#0.02 Attack-speed, 4 Attack-range, 15 Health#and 15 Stamina.";
    }
    
    else if argument0=113 || argument0=118 || argument0=123 || argument0=128 || argument0=133
    {
    obj_Controller.agility+=5;
    obj_Controller.ownstrength+=5;
    obj_Controller.defence+=5;
    obj_Controller.attackspeed+=0.05;
    obj_Controller.attackrange+=5;
    obj_Controller.ownhealthtotal+=40;
    obj_Controller.ownsptotal+=40;
     //iteminfo  = "Adds 5 Agility, 5 Strength, 5 Defence#0.05 Attack-speed, 5 Attack-range, 40 Health#and 40 Stamina.";
    }
    
    else if argument0=114 || argument0=119 || argument0=124 || argument0=129 || argument0=134
    {
    obj_Controller.agility+=10;
    obj_Controller.ownstrength+=10;
    obj_Controller.defence+=10;
    obj_Controller.attackspeed+=0.08;
    obj_Controller.attackrange+=10;
    obj_Controller.ownhealthtotal+=100;
    obj_Controller.ownsptotal+=100;
     //iteminfo  = "Adds 10 Agility, 10 Strength, 10 Defence#0.08 Attack-speed, 10 Attack-range, 100 Health#and 100 Stamina.";
    }
    
    else if argument0=115 || argument0=120 || argument0=125 || argument0=130 || argument0=135
    {
    obj_Controller.agility+=15;
    obj_Controller.ownstrength+=20;
    obj_Controller.defence+=10;
    obj_Controller.attackspeed+=0.10;
    obj_Controller.attackrange+=15;
    obj_Controller.ownhealthtotal+=150;
    obj_Controller.ownsptotal+=150;
     //iteminfo  = "Adds 15 Agility, 20 Strength, 10 Defence#0.10 Attack-speed, 15 Attack-range, 150 Health#and 150 Stamina.";
    }
     
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Weapon)
                attackrange = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
     //argument0=136
    else if argument0=136
    {
    obj_Controller.weapondamage+=0.1;
    obj_Controller.learnchain1=1
     //iteminfo  = "Adds 10% to base damage.";
     //learnchain1 = 1
    }
    
    else if argument0=137
    {
    obj_Controller.weapondamage+=0.16;
    obj_Controller.learnchain1=1
     //iteminfo  = "Adds 16% to base damage.";
     //learnchain1 = 1
    }
    
    else if argument0=138
    {
    obj_Controller.weapondamage+=0.25;
    obj_Controller.learnchain1=1
     //iteminfo  = "Adds 25% to base damage.";
     //learnchain1 = 1
    }
    
    else if argument0=139
    {
    obj_Controller.weapondamage+=0.4;
    obj_Controller.learnchain1=2
     //iteminfo  = "Adds 40% to base damage.";
     //learnchain1 = 2
    }
    
    else if argument0=140
    {
    obj_Controller.weapondamage+=0.55;
    obj_Controller.learnchain1=2
     //iteminfo  = "Adds 55% to base damage.";
     //learnchain1 = 2
    }
    
    else if argument0=141
    {
    obj_Controller.weapondamage+=0.8;
    obj_Controller.learnchain1=3
     //iteminfo  = "Adds 80% to base damage.";
     //learnchain1 = 3
    }
    
    else if argument0=142
    {
    obj_Controller.weapondamage+=1.2;
    obj_Controller.learnchain1=3
     //iteminfo  = "Adds 120% to base damage.";
     //learnchain1 = 3
    }
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Shield)
     ******************************************************************************************************/
     //argument0=189
    else if argument0=143
    {
    obj_Controller.defence+=4;
    obj_Controller.ownhealthtotal+=40;
     //iteminfo  = "Adds 4 Defence and 40 Health";
    }
    
    else if argument0=144
    {
    obj_Controller.defence+=9;
    obj_Controller.ownhealthtotal+=70;
     //iteminfo  = "Adds 9 Defence and 70 Health";
    }
    
    else if argument0=145
    {
    obj_Controller.defence+=21;
    obj_Controller.ownhealthtotal+=130;
     //iteminfo  = "Adds 21 Defence and 130 Health";
    }
    
    else if argument0=146
    {
    obj_Controller.defence+=45;
    obj_Controller.ownhealthtotal+=200;
     //iteminfo  = "Adds 45 Defence and 200 Health";
    }
    
    else if argument0=147
    {
    obj_Controller.defence+=90;
    obj_Controller.ownhealthtotal+=600;
     //iteminfo  = "Adds 90 Defence and 600 Health";
    }
    
    else if argument0=148
    {
    obj_Controller.defence+=150;
    obj_Controller.ownhealthtotal+=1200;
     //iteminfo  = "Adds 150 Defence and 1200 Health";
    }
    
    else if argument0=149
    {
    obj_Controller.defence+=175;
    obj_Controller.ownhealthtotal+=1500;
     //iteminfo  = "Adds 175 Defence and 1500 Health";
    }     
}
    





if argument1=0
{
    
    //unequip armor piece
    //itemid=argument0;
    //quantity=argument1;
    //var this;
    //this = item_pickup(argument0,1);
    
    obj_INVslots.item=argument0;
    obj_INVslots.quantity=1;
    obj_INVslots.pickup_item=true;
    


    if argument0=20
    {
     ////iteminfo  = "Adds 4 Defence and 35 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=35;
     obj_Controller.defence-=4
    }
    
    else if argument0=21
    {
    
     ////iteminfo  = "Adds 9 Defence and 60 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=60;
     obj_Controller.defence-=9
    }
    
    else if argument0=22
    {
     ////iteminfo  = "Adds 21 Defence and 145 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=145;
     obj_Controller.defence-=21
    }
    
    else if argument0=23
    {
     ////iteminfo  = "Adds 45 Defence and 220 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=220;
     obj_Controller.defence-=45
    }
    
    else if argument0=24
    {
     ////iteminfo  = "Adds 90 Defence and 550 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=550;
     obj_Controller.defence-=90
    }
    
    else if argument0=25
    {
     ////iteminfo  = "Adds 150 Defence and 1100 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=1100;
     obj_Controller.defence-=150
    }
    
    else if argument0=26
    {
     ////iteminfo  = "Adds 8 Defence and 60 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=60;
     obj_Controller.defence-=8
    }
    
    else if argument0=27
    {
     ////iteminfo  = "Adds 14 Defence and 100 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=100;
     obj_Controller.defence-=14
    }
    
    else if argument0=28
    {
     ////iteminfo  = "Adds 30 Defence and 220 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=220;
     obj_Controller.defence-=30
    }
    
    else if argument0=29
    {
     ////iteminfo  = "Adds 58 Defence and 290 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=290;
     obj_Controller.defence-=58
    }
    
    else if argument0=30
    {
     ////iteminfo  = "Adds 110 Defence and 800 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=800;
     obj_Controller.defence-=110
    }
    
    else if argument0=31
    {
     ////iteminfo  = "Adds 200 Defence and 2000 Health";
     obj_Controller.armor_top=0
     obj_Controller.ownhealthtotal-=2000;
     obj_Controller.defence-=200
    }
    
    else if argument=32
    {
    obj_Controller.armor_top=0
    obj_Controller.ownhealthtotal-=1000000000
    obj_Controller.defence-=99999
    }
    
    
    /***************************************************
      SEQUAL
    /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Head)
     ******************************************************************************************************/
    
    else if argument0=33
    {
    //iteminfo  = "Adds 2 Defence and 20 Health";
    obj_Controller.defence-=2;
    obj_Controller.ownhealthtotal-=20;
    }
    
    else if argument0=34
    {
    //iteminfo  = "Adds 5 Defence and 35 Health";
    obj_Controller.defence-=5;
    obj_Controller.ownhealthtotal-=35;
    }
    
    else if argument0=35
    {
    obj_Controller.defence-=8;
    obj_Controller.ownhealthtotal-=60;
     //iteminfo  = "Adds 8 Defence and 60 Health";
    }
    
    else if argument0=36
    {
    obj_Controller.defence-=14;
    obj_Controller.ownhealthtotal-=120;
     //iteminfo  = "Adds 14 Defence and 120 Health";
    }
    
    else if argument0=37
    {
    obj_Controller.defence-=50;
    obj_Controller.ownhealthtotal-=200;
     //iteminfo  = "Adds 50 Defence and 200 Health";
    }
    
    else if argument0=38
    {
    obj_Controller.defence-=70;
    obj_Controller.ownhealthtotal-=300;
     //iteminfo  = "Adds 70 Defence and 300 Health";
    }
    
    else if argument0=39
    {
    obj_Controller.defence-=4;
    obj_Controller.ownhealthtotal-=50;
     //iteminfo  = "Adds 4 Defence and 50 Health";
    }
    
    else if argument0=40
    {
    obj_Controller.defence-=6;
    obj_Controller.ownhealthtotal-=80;
     //iteminfo  = "Adds 6 Defence and 80 Health";
    }
    
    else if argument0=41
    {
    obj_Controller.defence-=10;
    obj_Controller.ownhealthtotal-=120;
     //iteminfo  = "Adds 10 Defence and 120 Health";
    }
    
    else if argument0=42
    {
    obj_Controller.defence-=25;
    obj_Controller.ownhealthtotal-=160;
     //iteminfo  = "Adds 25 Defence and 160 Health";
    }
    
    else if argument0=43
    {
    obj_Controller.defence-=55;
    obj_Controller.ownhealthtotal-=230;
     //iteminfo  = "Adds 55 Defence and 230 Health";
    }
    
    else if argument0=44
    {
    obj_Controller.defence-=80;
    obj_Controller.ownhealthtotal-=400;
     //iteminfo  = "Adds 80 Defence and 400 Health";
    }
    
    else if argument0=45
    {
    obj_Controller.defence-=99999;
    obj_Controller.ownhealthtotal-=1000000000;
     //iteminfo  = "Adds 99999 Defence and 1000000000 Health";
    }
     
     
    /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Shoulders)
                ownhealthtotal = real(buffer_read_string(buffer));
                ownsptotal = real(buffer_read_string(buffer));         
                ownstrength = real(buffer_read_string(buffer));
                attackrange = real(buffer_read_string(buffer));
                agility = real(buffer_read_string(buffer));
                defence = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                attackspeed = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
     else if argument0=46
    {
    obj_Controller.agility-=2;
    obj_Controller.ownstrength-=3;
     //iteminfo  = "Adds 2 Agility and 3 Strength";
    }
    
    else if argument0=47
    {
    obj_Controller.agility-=5;
    obj_Controller.ownstrength-=7;
     //iteminfo  = "Adds 5 Agility and 7 Strength";
    }
    
    else if argument0=48
    {
    obj_Controller.agility-=8;
    obj_Controller.ownstrength-=15;
     //iteminfo  = "Adds 8 Agility and 15 Strength";
    }
    
    else if argument0=49
    {
    obj_Controller.agility-=14;
    obj_Controller.ownstrength-=24;
     //iteminfo  = "Adds 14 Agility and 24 Strength";
    }
    
    else if argument0=50
    {
    obj_Controller.agility-=50;
    obj_Controller.ownstrength-=75;
     //iteminfo  = "Adds 50 Agility and 75 Strength";
    }
    
    else if argument0=51
    {
    obj_Controller.agility-=70;
    obj_Controller.ownstrength-=115;
     //iteminfo  = "Adds 70 Agility and 115 Strength";
    }
    
     else if argument0=52
    {
    obj_Controller.agility-=3;
    obj_Controller.ownstrength-=5;
     //iteminfo  = "Adds 3 Agility and 5 Strength";
    }
    
    else if argument0=53
    {
    obj_Controller.agility-=9;
    obj_Controller.ownstrength-=11;
     //iteminfo  = "Adds 9 Agility and 11 Strength";
    }
    
    else if argument0=54
    {
    obj_Controller.agility-=12;
    obj_Controller.ownstrength-=22;
     //iteminfo  = "Adds 12 Agility and 22 Strength";
    }
    
    else if argument0=55
    {
    obj_Controller.agility-=20;
    obj_Controller.ownstrength-=31;
     //iteminfo  = "Adds 20 Agility and 31 Strength";
    }
    
    else if argument0=56
    {
    obj_Controller.agility-=66;
    obj_Controller.ownstrength-=94;
     //iteminfo  = "Adds 66 Agility and 94 Strength";
    }
    
    else if argument0=57
    {
    obj_Controller.agility-=100;
    obj_Controller.ownstrength-=145;
     //iteminfo  = "Adds 100 Agility and 145 Strength";
    }
     
    else if argument0=58
    {
    obj_Controller.agility-=99999;
    obj_Controller.ownstrength-=99999;
     //iteminfo  = "Adds 99999 Agility and 99999 Strength";
    }
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Gloves)
                ownhealthtotal = real(buffer_read_string(buffer));
                ownsptotal = real(buffer_read_string(buffer));         
                ownstrength = real(buffer_read_string(buffer));
                attackrange = real(buffer_read_string(buffer));
                agility = real(buffer_read_string(buffer));
                defence = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                attackspeed = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
    else if argument0=59
    {
    obj_Controller.attackrange-=5;
    obj_Controller.ownstrength-=2;
     //iteminfo  = "Adds 5 Attack-range and 2 Strength";
    }
    
    else if argument0=60
    {
    obj_Controller.attackrange-=12;
    obj_Controller.ownstrength-=5;
     //iteminfo  = "Adds 12 Attack-range and 5 Strength";
    }
    
    else if argument0=61
    {
    obj_Controller.attackrange-=22;
    obj_Controller.ownstrength-=12;
     //iteminfo  = "Adds 22 Attack-range and 12 Strength";
    }
    
    else if argument0=62
    {
    obj_Controller.attackrange-=30;
    obj_Controller.ownstrength-=16;
     //iteminfo  = "Adds 30 Attack-range and 16 Strength";
    }
    
    else if argument0=63
    {
    obj_Controller.attackrange-=40;
    obj_Controller.ownstrength-=60;
     //iteminfo  = "Adds 40 Attack-range and 60 Strength";
    }
    
    else if argument0=64
    {
    obj_Controller.attackrange-=55;
    obj_Controller.ownstrength-=94;
     //iteminfo  = "Adds 55 Attack-range and 94 Strength";
    }
    
    else if argument0=65
    {
    obj_Controller.attackrange-=7;
    obj_Controller.ownstrength-=3;
     //iteminfo  = "Adds 7 Attack-range and 3 Strength";
    }
    
    else if argument0=66
    {
    obj_Controller.attackrange-=15;
    obj_Controller.ownstrength-=7;
     //iteminfo  = "Adds 15 Attack-range and 7 Strength";
    }
    
    else if argument0=67
    {
    obj_Controller.attackrange-=26;
    obj_Controller.ownstrength-=15;
     //iteminfo  = "Adds 26 Attack-range and 15 Strength";
    }
    
    else if argument0=68
    {
    obj_Controller.attackrange-=35;
    obj_Controller.ownstrength-=20;
     //iteminfo  = "Adds 35 Attack-range and 20 Strength";
    }
    
    else if argument0=69
    {
    obj_Controller.attackrange-=50;
    obj_Controller.ownstrength-=70;
     //iteminfo  = "Adds 50 Attack-range and 70 Strength";
    }
    
    else if argument0=70
    {
    obj_Controller.attackrange-=62;
    obj_Controller.ownstrength-=100;
     //iteminfo  = "Adds 62 Attack-range and 100 Strength";
    }
    
    else if argument0=71
    {
    obj_Controller.attackrange-=99999;
    obj_Controller.ownstrength-=99999;
     //iteminfo  = "Adds 99999 Attack-range and 99999 Strength";
    }
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Vambraces)
                ownhealthtotal = real(buffer_read_string(buffer));
                ownsptotal = real(buffer_read_string(buffer));         
                ownstrength = real(buffer_read_string(buffer));
                attackrange = real(buffer_read_string(buffer));
                agility = real(buffer_read_string(buffer));
                defence = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                attackspeed = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
     //argument0=72
    else if argument0=72
    {
    obj_Controller.attackspeed-=0.02;
    obj_Controller.defence-=2;
     //iteminfo  = "Adds 0.02 Attack-speed and 2 Defence";
    }
    
    else if argument0=73
    {
    obj_Controller.attackspeed-=0.12;
    obj_Controller.defence-=5;
     //iteminfo  = "Adds 0.12 Attack-speed and 5 Defence";
    }
    
    else if argument0=74
    {
    obj_Controller.attackspeed-=0.22;
    obj_Controller.defence-=12;
     //iteminfo  = "Adds 0.22 Attack-speed and 12 Defence";
    }
    
    else if argument0=75
    {
    obj_Controller.attackspeed-=0.30;
    obj_Controller.defence-=16;
     //iteminfo  = "Adds 0.30 Attack-speed and 16 Defence";
    }
    
    else if argument0=76
    {
    obj_Controller.attackspeed-=0.40;
    obj_Controller.defence-=35;
     //iteminfo  = "Adds 0.40 Attack-speed and 35 Defence";
    }
    
    else if argument0=77
    {
    obj_Controller.attackspeed-=0.55;
    obj_Controller.defence-=45;
     //iteminfo  = "Adds 0.55 Attack-speed and 45 Defence";
    }
    
    else if argument0=78
    {
    obj_Controller.attackspeed-=0.04;
    obj_Controller.defence-=3;
     //iteminfo  = "Adds 0.04 Attack-speed and 3 Defence";
    }
    
    else if argument0=79
    {
    obj_Controller.attackspeed-=0.15;
    obj_Controller.defence-=7;
     //iteminfo  = "Adds 0.15 Attack-speed and 7 Defence";
    }
    
    else if argument0=80
    {
    obj_Controller.attackspeed-=0.25;
    obj_Controller.defence-=15;
     //iteminfo  = "Adds 0.25 Attack-speed and 15 Defence";
    }
    
    else if argument0=81
    {
    obj_Controller.attackspeed-=0.34;
    obj_Controller.defence-=18;
     //iteminfo  = "Adds 0.34 Attack-speed and 18 Defence";
    }
    
    else if argument0=82
    {
    obj_Controller.attackspeed-=0.45;
    obj_Controller.defence-=42;
     //iteminfo  = "Adds 0.45 Attack-speed and 42 Defence";
    }
    
    else if argument0=83
    {
    obj_Controller.attackspeed-=0.60;
    obj_Controller.defence-=58;
     //iteminfo  = "Adds 0.60 Attack-speed and 58 Defence";
    }
    
    else if argument0=84
    {
    obj_Controller.attackspeed-=5;
    obj_Controller.defence-=99999;
     //iteminfo  = "Adds 5 Attack-speed and 99999 Defence";
    }
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Legs)
                ownhealthtotal = real(buffer_read_string(buffer));
                ownsptotal = real(buffer_read_string(buffer));         
                ownstrength = real(buffer_read_string(buffer));
                attackrange = real(buffer_read_string(buffer));
                agility = real(buffer_read_string(buffer));
                defence = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                attackspeed = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
     //argument0=85
    else if argument0=85
    {
    obj_Controller.defence-=2;
    obj_Controller.ownhealthtotal-=20;
     //iteminfo  = "Adds 2 Defence and 20 Health";
    }
    
    else if argument0=86
    {
    obj_Controller.defence-=5;
    obj_Controller.ownhealthtotal-=35;
     //iteminfo  = "Adds 5 Defence and 35 Health";
    }
    
    else if argument0=87
    {
    obj_Controller.defence-=8;
    obj_Controller.ownhealthtotal-=60;
     //iteminfo  = "Adds 8 Defence and 60 Health";
    }
    
    else if argument0=88
    {
    obj_Controller.defence-=14;
    obj_Controller.ownhealthtotal-=120;
     //iteminfo  = "Adds 14 Defence and 120 Health";
    }
    
    else if argument0=89
    {
    obj_Controller.defence-=50;
    obj_Controller.ownhealthtotal-=200;
     //iteminfo  = "Adds 50 Defence and 200 Health";
    }
    
    else if argument0=90
    {
    obj_Controller.defence-=70;
    obj_Controller.ownhealthtotal-=300;
     //iteminfo  = "Adds 70 Defence and 300 Health";
    }
    
    else if argument0=91
    {
    obj_Controller.defence-=4;
    obj_Controller.ownhealthtotal-=50;
     //iteminfo  = "Adds 4 Defence and 50 Health";
    }
    
    else if argument0=92
    {
    obj_Controller.defence-=6;
    obj_Controller.ownhealthtotal-=80;
     //iteminfo  = "Adds 6 Defence and 80 Health";
    }
    
    else if argument0=93
    {
    obj_Controller.defence-=10;
    obj_Controller.ownhealthtotal-=120;
     //iteminfo  = "Adds 10 Defence and 120 Health";
    }
    
    else if argument0=94
    {
    obj_Controller.defence-=25;
    obj_Controller.ownhealthtotal-=160;
     //iteminfo  = "Adds 25 Defence and 160 Health";
    }
    
    else if argument0=95
    {
    obj_Controller.defence-=55;
    obj_Controller.ownhealthtotal-=230;
     //iteminfo  = "Adds 55 Defence and 230 Health";
    }
    
    else if argument0=96
    {
    obj_Controller.defence-=80;
    obj_Controller.ownhealthtotal-=400;
     //iteminfo  = "Adds 80 Defence and 400 Health";
    }
    
    else if argument0=97
    {
    obj_Controller.defence-=99999;
    obj_Controller.ownhealthtotal-=1000000000;
     //iteminfo  = "Adds 99999 Defence and 1000000000 Health";
    }
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Boots)
                ownhealthtotal = real(buffer_read_string(buffer));
                ownsptotal = real(buffer_read_string(buffer));         
                ownstrength = real(buffer_read_string(buffer));
                attackrange = real(buffer_read_string(buffer));
                agility = real(buffer_read_string(buffer));
                defence = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                attackspeed = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
     //argument0=98
     else if argument0=98
    {
    obj_Controller.agility-=2;
    obj_Controller.ownstrength-=1;
     //iteminfo  = "Adds 2 Agility and 1 Strength";
    }
    
    else if argument0=99
    {
    obj_Controller.agility-=5;
    obj_Controller.ownstrength-=3;
     //iteminfo  = "Adds 5 Agility and 3 Strength";
    }
    
    else if argument0=100
    {
    obj_Controller.agility-=8;
    obj_Controller.ownstrength-=5;
     //iteminfo  = "Adds 8 Agility and 5 Strength";
    }
    
    else if argument0=101
    {
    obj_Controller.agility-=14;
    obj_Controller.ownstrength-=10;
     //iteminfo  = "Adds 14 Agility and 10 Strength";
    }
    
    else if argument0=102
    {
    obj_Controller.agility-=50;
    obj_Controller.ownstrength-=14;
     //iteminfo  = "Adds 50 Agility and 14 Strength";
    }
    
    else if argument0=103
    {
    obj_Controller.agility-=70;
    obj_Controller.ownstrength-=22;
     //iteminfo  = "Adds 70 Agility and 22 Strength";
    }
    
     else if argument0=104
    {
    obj_Controller.agility-=3;
    obj_Controller.ownstrength-=2;
     //iteminfo  = "Adds 3 Agility and 2 Strength";
    }
    
    else if argument0=105
    {
    obj_Controller.agility-=9;
    obj_Controller.ownstrength-=5;
     //iteminfo  = "Adds 9 Agility and 5 Strength";
    }
    
    else if argument0=106
    {
    obj_Controller.agility-=12;
    obj_Controller.ownstrength-=9;
     //iteminfo  = "Adds 12 Agility and 9 Strength";
    }
    
    else if argument0=107
    {
    obj_Controller.agility-=20;
    obj_Controller.ownstrength-=16;
     //iteminfo  = "Adds 20 Agility and 16 Strength";
    }
    
    else if argument0=108
    {
    obj_Controller.agility-=66;
    obj_Controller.ownstrength-=20;
     //iteminfo  = "Adds 66 Agility and 20 Strength";
    }
    
    else if argument0=109
    {
    obj_Controller.agility-=100;
    obj_Controller.ownstrength-=25;
     //iteminfo  = "Adds 100 Agility and 25 Strength";
    }
     
    else if argument0=110
    {
    obj_Controller.agility-=99999;
    obj_Controller.ownstrength-=99999;
     //iteminfo  = "Adds 99999 Agility and 99999 Strength";
    }
     
     /******************************************************************************************************
      ////////////////// Equipment Collection (Earrings | ring1 | ring2 | ring3 | ring4)
     ******************************************************************************************************/
     //argument0=111
    else if argument0=111 || argument0=116 || argument0=121 || argument0=126 || argument0=131
    {
    obj_Controller.agility-=1;
    obj_Controller.ownstrength-=1;
    obj_Controller.defence-=1;
    obj_Controller.attackspeed-=0.01;
    obj_Controller.attackrange-=2;
    obj_Controller.ownhealthtotal-=5;
    obj_Controller.ownsptotal-=5;
     //iteminfo  = "Adds 1 Agility, 1 Strength, 1 Defence#0.01 Attack-speed, 2 Attack-range, 5 Health#and 5 Stamina.";
    }
    
    else if argument0=112 || argument0=117 || argument0=122 || argument0=127 || argument0=132
    {
    obj_Controller.agility-=2;
    obj_Controller.ownstrength-=2;
    obj_Controller.defence-=2;
    obj_Controller.attackspeed-=0.02;
    obj_Controller.attackrange-=4;
    obj_Controller.ownhealthtotal-=15;
    obj_Controller.ownsptotal-=15;
     //iteminfo  = "Adds 2 Agility, 2 Strength, 2 Defence#0.02 Attack-speed, 4 Attack-range, 15 Health#and 15 Stamina.";
    }
    
    else if argument0=113 || argument0=118 || argument0=123 || argument0=128 || argument0=133
    {
    obj_Controller.agility-=5;
    obj_Controller.ownstrength-=5;
    obj_Controller.defence-=5;
    obj_Controller.attackspeed-=0.05;
    obj_Controller.attackrange-=5;
    obj_Controller.ownhealthtotal-=40;
    obj_Controller.ownsptotal-=40;
     //iteminfo  = "Adds 5 Agility, 5 Strength, 5 Defence#0.05 Attack-speed, 5 Attack-range, 40 Health#and 40 Stamina.";
    }
    
    else if argument0=114 || argument0=119 || argument0=124 || argument0=129 || argument0=134
    {
    obj_Controller.agility-=10;
    obj_Controller.ownstrength-=10;
    obj_Controller.defence-=10;
    obj_Controller.attackspeed-=0.08;
    obj_Controller.attackrange-=10;
    obj_Controller.ownhealthtotal-=100;
    obj_Controller.ownsptotal-=100;
     //iteminfo  = "Adds 10 Agility, 10 Strength, 10 Defence#0.08 Attack-speed, 10 Attack-range, 100 Health#and 100 Stamina.";
    }
    
    else if argument0=115 || argument0=120 || argument0=125 || argument0=130 || argument0=135
    {
    obj_Controller.agility-=15;
    obj_Controller.ownstrength-=20;
    obj_Controller.defence-=10;
    obj_Controller.attackspeed-=0.10;
    obj_Controller.attackrange-=15;
    obj_Controller.ownhealthtotal-=150;
    obj_Controller.ownsptotal-=150;
     //iteminfo  = "Adds 15 Agility, 20 Strength, 10 Defence#0.10 Attack-speed, 15 Attack-range, 150 Health#and 150 Stamina.";
    }
     
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Weapon)
                attackrange = real(buffer_read_string(buffer));
                weapondamage = real(buffer_read_string(buffer));
                learnchain1 = real(buffer_read_string(buffer));
     ******************************************************************************************************/
     //argument0=136
    else if argument0=136
    {
    obj_Controller.weapondamage-=0.1;
    obj_Controller.learnchain1=1
     //iteminfo  = "Adds 10% to base damage.";
     learnchain1 = 1
    }
    
    else if argument0=137
    {
    obj_Controller.weapondamage-=0.16;
    obj_Controller.learnchain1=1
     //iteminfo  = "Adds 16% to base damage.";
     //learnchain1 = 1
    }
    
    else if argument0=138
    {
    obj_Controller.weapondamage-=0.25;
    obj_Controller.learnchain1=1
     //iteminfo  = "Adds 25% to base damage.";
     //learnchain1 = 1
    }
    
    else if argument0=139
    {
    obj_Controller.weapondamage-=0.4;
    obj_Controller.learnchain1=1
     //iteminfo  = "Adds 40% to base damage.";
     //learnchain1 = 1
    }
    
    else if argument0=140
    {
    obj_Controller.weapondamage-=0.55;
    obj_Controller.learnchain1=1
     //iteminfo  = "Adds 55% to base damage.";
     //learnchain1 = 1
    }
    
    else if argument0=141
    {
    obj_Controller.weapondamage-=0.8;
    obj_Controller.learnchain1=1
     //iteminfo  = "Adds 80% to base damage.";
     //learnchain1 = 1
    }
    
    else if argument0=142
    {
    obj_Controller.weapondamage-=1.2;
    obj_Controller.learnchain1=1
     //iteminfo  = "Adds 120% to base damage.";
     //learnchain1 = 1
    }
     
     /******************************************************************************************************
      /////////////////////////////////////Equipment Collection (Shield)
     ******************************************************************************************************/
     //argument0=189
    else if argument0=143
    {
    obj_Controller.defence-=4;
    obj_Controller.ownhealthtotal-=40;
     //iteminfo  = "Adds 4 Defence and 40 Health";
    }
    
    else if argument0=144
    {
    obj_Controller.defence-=9;
    obj_Controller.ownhealthtotal-=70;
     //iteminfo  = "Adds 9 Defence and 70 Health";
    }
    
    else if argument0=145
    {
    obj_Controller.defence-=21;
    obj_Controller.ownhealthtotal-=130;
     //iteminfo  = "Adds 21 Defence and 130 Health";
    }
    
    else if argument0=146
    {
    obj_Controller.defence-=45;
    obj_Controller.ownhealthtotal-=200;
     //iteminfo  = "Adds 45 Defence and 200 Health";
    }
    
    else if argument0=147
    {
    obj_Controller.defence-=90;
    obj_Controller.ownhealthtotal-=600;
     //iteminfo  = "Adds 90 Defence and 600 Health";
    }
    
    else if argument0=148
    {
    obj_Controller.defence-=150;
    obj_Controller.ownhealthtotal-=1200;
     //iteminfo  = "Adds 150 Defence and 1200 Health";
    }
    
    else if argument0=149
    {
    obj_Controller.defence-=175;
    obj_Controller.ownhealthtotal-=1500;
     //iteminfo  = "Adds 175 Defence and 1500 Health";
    }    
    
    argument2.itemID=0;

}