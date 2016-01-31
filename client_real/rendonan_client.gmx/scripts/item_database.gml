//argument0 = itemID

if argument0=0
{
 itemname  = string("Null");
 itemtype  = string("Null");
 itemstack = 1
 itemlevel = 0;
 iteminfo  = "Null";
} 
 

/******************************************************************************************************
  /////////////////////////////////////Consumable Collection
 ******************************************************************************************************/
else if argument0=1
{
 itemname  = string("Coins");
 itemtype  = string("General");
 itemstack = 24700000
 itemlevel = 0;
 iteminfo  = "Generally accepted in any store";
}

else if argument0=2
{
 itemname  = string("Small Health Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 40 health point";

}

else if argument0=3
{
 itemname  = string("Small Stamina Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 40 Stamina point";
}

else if argument0=4
{
 itemname  = string("Small Rejuvenation Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 60 Stamina and Health points";
}

else if argument0=5
{
 itemname  = string("Medium Health Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 120 Health points";
}

else if argument0=6
{
 itemname  = string("Medium Stamina Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 120 Stamina point";
}

else if argument0=7
{
 itemname  = string("Medium Rejuvenation Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 200 Stamina and Health points";
}

else if argument0=8
{
 itemname  = string("Large Health Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 500 Stamina and Health points";
}

else if argument0=9
{
 itemname  = string("Large Stamina Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 500 Stamina and Health points";
}

else if argument0=10
{
 itemname  = string("Large Rejuvenation Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 1000 Stamina and Health points";
}

else if argument0=11
{
 itemname  = string("Fixed Health Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 40% of your Health";
}

else if argument0=12
{
 itemname  = string("Fixed Stamina Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 40% of your Stamina";
}

else if argument0=13
{
 itemname  = string("Fixed Rejuvenation Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 50% of your Health and Stamina";
}

else if argument0=14
{
 itemname  = string("Blast Health Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 60% of your Health";
}

else if argument0=15
{
 itemname  = string("Blast Stamina Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 60% of your Stamina";
}

else if argument0=16
{
 itemname  = string("Blast Rejuvenation Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 70% of your Health and Stamina";
}

else if argument0=17
{
 itemname  = string("Dragonic Health Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 90% of your Health";
}

else if argument0=18
{
 itemname  = string("Dragonic Stamina Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 90% of your Stamina";
}

else if argument0=19
{
 itemname  = string("Dragonic Rejuvenation Potion");
 itemtype  = string("Consumable");
 itemstack = 30
 itemlevel = 0;
 iteminfo  = "Heals 100% of your Health and Stamina";
}

/******************************************************************************************************
  /////////////////////////////////////Equipment Collection (TOPS)
 ******************************************************************************************************/

else if argument0=20
{
 itemname  = string("Leather Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 5;
 iteminfo  = "Adds 4 Defence and 35 Health";
}

else if argument0=21
{
 itemname  = string("Iron Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 12;
 iteminfo  = "Adds 9 Defence and 60 Health";
}

else if argument0=22
{
 itemname  = string("Steel Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 19;
 iteminfo  = "Adds 21 Defence and 145 Health";
}

else if argument0=23
{
 itemname  = string("Mithril Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 30;
 iteminfo  = "Adds 45 Defence and 220 Health";
}

else if argument0=24
{
 itemname  = string("Mystic Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 44;
 iteminfo  = "Adds 90 Defence and 550 Health";
}

else if argument0=25
{
 itemname  = string("Dragonic Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 65;
 iteminfo  = "Adds 150 Defence and 1100 Health";
}

else if argument0=26
{
 itemname  = string("Enchanted Leather Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 5;
 iteminfo  = "Adds 8 Defence and 60 Health";
}

else if argument0=27
{
 itemname  = string("Enchanted Iron Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 12;
 iteminfo  = "Adds 14 Defence and 100 Health";
}

else if argument0=28
{
 itemname  = string("Enchanted Steel Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 19;
 iteminfo  = "Adds 30 Defence and 220 Health";
}

else if argument0=29
{
 itemname  = string("Enchanted Mithril Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 30;
 iteminfo  = "Adds 58 Defence and 290 Health";
}

else if argument0=30
{
 itemname  = string("Enchanted Mystic Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 44;
 iteminfo  = "Adds 110 Defence and 800 Health";
}

else if argument0=31
{
 itemname  = string("Enchanted Dragonic Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 65;
 iteminfo  = "Adds 200 Defence and 2000 Health";
}

else if argument0=32
{
 itemname  = string("Mystical Rendonan Armor");
 itemtype  = string("Upper Equipment");
 itemstack = 30
 itemlevel = 999;
 iteminfo  = "Adds 99999 Defence and 1000000000 Health";
}

/******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Head)
 ******************************************************************************************************/
else if argument0=33
{
 itemname  = string("Leather Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 4;
 iteminfo  = "Adds 2 Defence and 20 Health";
}

else if argument0=34
{
 itemname  = string("Iron Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 11;
 iteminfo  = "Adds 5 Defence and 35 Health";
}

else if argument0=35
{
 itemname  = string("Steel Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 18;
 iteminfo  = "Adds 8 Defence and 60 Health";
}

else if argument0=36
{
 itemname  = string("Mithril Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 29;
 iteminfo  = "Adds 14 Defence and 120 Health";
}

else if argument0=37
{
 itemname  = string("Mystic Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 43;
 iteminfo  = "Adds 50 Defence and 200 Health";
}

else if argument0=38
{
 itemname  = string("Dragonic Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 64;
 iteminfo  = "Adds 70 Defence and 300 Health";
}

else if argument0=39
{
 itemname  = string("Enchanted Leather Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 4;
 iteminfo  = "Adds 4 Defence and 50 Health";
}

else if argument0=40
{
 itemname  = string("Enchanted Iron Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 11;
 iteminfo  = "Adds 6 Defence and 80 Health";
}

else if argument0=41
{
 itemname  = string("Enchanted Steel Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 18;
 iteminfo  = "Adds 10 Defence and 120 Health";
}

else if argument0=42
{
 itemname  = string("Enchanted Mithril Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 29;
 iteminfo  = "Adds 25 Defence and 160 Health";
}

else if argument0=43
{
 itemname  = string("Enchanted Mystic Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 43;
 iteminfo  = "Adds 55 Defence and 230 Health";
}

else if argument0=44
{
 itemname  = string("Enchanted Dragonic Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 64;
 iteminfo  = "Adds 80 Defence and 400 Health";
}

else if argument0=45
{
 itemname  = string("Mystical Rendonan Helmet");
 itemtype  = string("Head Equipment");
 itemstack = 30
 itemlevel = 999;
 iteminfo  = "Adds 99999 Defence and 1000000000 Health";
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
 itemname  = string("Leather Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 3;
 iteminfo  = "Adds 2 Agility and 3 Strength";
}

else if argument0=47
{
 itemname  = string("Iron Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 5 Agility and 7 Strength";
}

else if argument0=48
{
 itemname  = string("Steel Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 17;
 iteminfo  = "Adds 8 Agility and 15 Strength";
}

else if argument0=49
{
 itemname  = string("Mithril Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 28;
 iteminfo  = "Adds 14 Agility and 24 Strength";
}

else if argument0=50
{
 itemname  = string("Mystic Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 42;
 iteminfo  = "Adds 50 Agility and 75 Strength";
}

else if argument0=51
{
 itemname  = string("Dragonic Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 63;
 iteminfo  = "Adds 70 Agility and 115 Strength";
}

 else if argument0=52
{
 itemname  = string("Enchanted Leather Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 3;
 iteminfo  = "Adds 3 Agility and 5 Strength";
}

else if argument0=53
{
 itemname  = string("Enchanted Iron Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 9 Agility and 11 Strength";
}

else if argument0=54
{
 itemname  = string("Enchanted Steel Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 17;
 iteminfo  = "Adds 12 Agility and 22 Strength";
}

else if argument0=55
{
 itemname  = string("Enchanted Mithril Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 28;
 iteminfo  = "Adds 20 Agility and 31 Strength";
}

else if argument0=56
{
 itemname  = string("Enchanted Mystic Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 42;
 iteminfo  = "Adds 66 Agility and 94 Strength";
}

else if argument0=57
{
 itemname  = string("Enchanted Dragonic Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 63;
 iteminfo  = "Adds 100 Agility and 145 Strength";
}
 
else if argument0=58
{
 itemname  = string("Mystical Rendonan Shoulders");
 itemtype  = string("Shoulder Equipment");
 itemstack = 30
 itemlevel = 999;
 iteminfo  = "Adds 99999 Agility and 99999 Strength";
}
 
 /******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Gloves)
 ******************************************************************************************************/
else if argument0=59
{
 itemname  = string("Leather Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 2;
 iteminfo  = "Adds 5 Attack-range and 2 Strength";
}

else if argument0=60
{
 itemname  = string("Iron Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 9;
 iteminfo  = "Adds 12 Attack-range and 5 Strength";
}

else if argument0=61
{
 itemname  = string("Steel Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 16;
 iteminfo  = "Adds 22 Attack-range and 12 Strength";
}

else if argument0=62
{
 itemname  = string("Mithril Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 27;
 iteminfo  = "Adds 30 Attack-range and 16 Strength";
}

else if argument0=63
{
 itemname  = string("Mystic Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 41;
 iteminfo  = "Adds 40 Attack-range and 60 Strength";
}

else if argument0=64
{
 itemname  = string("Dragonic Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 62;
 iteminfo  = "Adds 55 Attack-range and 94 Strength";
}

else if argument0=65
{
 itemname  = string("Enchanted Leather Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 2;
 iteminfo  = "Adds 7 Attack-range and 3 Strength";
}

else if argument0=66
{
 itemname  = string("Enchanted Iron Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 9;
 iteminfo  = "Adds 15 Attack-range and 7 Strength";
}

else if argument0=67
{
 itemname  = string("Enchanted Steel Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 16;
 iteminfo  = "Adds 26 Attack-range and 15 Strength";
}

else if argument0=68
{
 itemname  = string("Enchanted Mithril Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 27;
 iteminfo  = "Adds 35 Attack-range and 20 Strength";
}

else if argument0=69
{
 itemname  = string("Enchanted Mystic Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 41;
 iteminfo  = "Adds 50 Attack-range and 70 Strength";
}

else if argument0=70
{
 itemname  = string("Enchanted Dragonic Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 62;
 iteminfo  = "Adds 62 Attack-range and 100 Strength";
}

else if argument0=71
{
 itemname  = string("Mystical Rendonan Gloves");
 itemtype  = string("Hand Equipment");
 itemstack = 30
 itemlevel = 999;
 iteminfo  = "Adds 99999 Attack-range and 99999 Strength";
}
 
 /******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Vambraces)
 ******************************************************************************************************/
 //argument0=72
else if argument0=72
{
 itemname  = string("Leather Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 3;
 iteminfo  = "Adds 0.02 Attack-speed and 2 Defence";
}

else if argument0=73
{
 itemname  = string("Iron Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 0.12 Attack-speed and 5 Defence";
}

else if argument0=74
{
 itemname  = string("Steel Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 17;
 iteminfo  = "Adds 0.22 Attack-speed and 12 Defence";
}

else if argument0=75
{
 itemname  = string("Mithril Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 28;
 iteminfo  = "Adds 0.30 Attack-speed and 16 Defence";
}

else if argument0=76
{
 itemname  = string("Mystic Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 42;
 iteminfo  = "Adds 0.40 Attack-speed and 35 Defence";
}

else if argument0=77
{
 itemname  = string("Dragonic Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 63;
 iteminfo  = "Adds 0.55 Attack-speed and 45 Defence";
}

else if argument0=78
{
 itemname  = string("Enchanted Leather Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 3;
 iteminfo  = "Adds 0.04 Attack-speed and 3 Defence";
}

else if argument0=79
{
 itemname  = string("Enchanted Iron Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 0.15 Attack-speed and 7 Defence";
}

else if argument0=80
{
 itemname  = string("Enchanted Steel Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 17;
 iteminfo  = "Adds 0.25 Attack-speed and 15 Defence";
}

else if argument0=81
{
 itemname  = string("Enchanted Mithril Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 28;
 iteminfo  = "Adds 0.34 Attack-speed and 18 Defence";
}

else if argument0=82
{
 itemname  = string("Enchanted Mystic Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 42;
 iteminfo  = "Adds 0.45 Attack-speed and 42 Defence";
}

else if argument0=83
{
 itemname  = string("Enchanted Dragonic Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 63;
 iteminfo  = "Adds 0.60 Attack-speed and 58 Defence";
}

else if argument0=84
{
 itemname  = string("Mystical Rendonan Vambraces");
 itemtype  = string("Arm Equipment");
 itemstack = 30
 itemlevel = 63;
 iteminfo  = "Adds 5 Attack-speed and 99999 Defence";
}
 
 /******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Legs)
 ******************************************************************************************************/
 //argument0=85
else if argument0=85
{
 itemname  = string("Leather Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 4;
 iteminfo  = "Adds 2 Defence and 20 Health";
}

else if argument0=86
{
 itemname  = string("Iron Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 11;
 iteminfo  = "Adds 5 Defence and 35 Health";
}

else if argument0=87
{
 itemname  = string("Steel Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 18;
 iteminfo  = "Adds 8 Defence and 60 Health";
}

else if argument0=88
{
 itemname  = string("Mithril Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 29;
 iteminfo  = "Adds 14 Defence and 120 Health";
}

else if argument0=89
{
 itemname  = string("Mystic Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 43;
 iteminfo  = "Adds 50 Defence and 200 Health";
}

else if argument0=90
{
 itemname  = string("Dragonic Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 64;
 iteminfo  = "Adds 70 Defence and 300 Health";
}

else if argument0=91
{
 itemname  = string("Enchanted Leather Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 4;
 iteminfo  = "Adds 4 Defence and 50 Health";
}

else if argument0=92
{
 itemname  = string("Enchanted Iron Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 11;
 iteminfo  = "Adds 6 Defence and 80 Health";
}

else if argument0=93
{
 itemname  = string("Enchanted Steel Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 18;
 iteminfo  = "Adds 10 Defence and 120 Health";
}

else if argument0=94
{
 itemname  = string("Enchanted Mithril Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 29;
 iteminfo  = "Adds 25 Defence and 160 Health";
}

else if argument0=95
{
 itemname  = string("Enchanted Mystic Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 43;
 iteminfo  = "Adds 55 Defence and 230 Health";
}

else if argument0=96
{
 itemname  = string("Enchanted Dragonic Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 64;
 iteminfo  = "Adds 80 Defence and 400 Health";
}

else if argument0=97
{
 itemname  = string("Mystical Rendonan Leggings");
 itemtype  = string("Leg Equipment");
 itemstack = 30
 itemlevel = 999;
 iteminfo  = "Adds 99999 Defence and 1000000000 Health";
}
 
 /******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Boots)
 ******************************************************************************************************/
 //argument0=98
 else if argument0=98
{
 itemname  = string("Leather Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 3;
 iteminfo  = "Adds 2 Agility and 1 Strength";
}

else if argument0=99
{
 itemname  = string("Iron Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 5 Agility and 3 Strength";
}

else if argument0=100
{
 itemname  = string("Steel Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 17;
 iteminfo  = "Adds 8 Agility and 5 Strength";
}

else if argument0=101
{
 itemname  = string("Mithril Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 28;
 iteminfo  = "Adds 14 Agility and 10 Strength";
}

else if argument0=102
{
 itemname  = string("Mystic Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 42;
 iteminfo  = "Adds 50 Agility and 14 Strength";
}

else if argument0=103
{
 itemname  = string("Dragonic Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 63;
 iteminfo  = "Adds 70 Agility and 22 Strength";
}

 else if argument0=104
{
 itemname  = string("Enchanted Leather Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 3;
 iteminfo  = "Adds 3 Agility and 2 Strength";
}

else if argument0=105
{
 itemname  = string("Enchanted Iron Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 9 Agility and 5 Strength";
}

else if argument0=106
{
 itemname  = string("Enchanted Steel Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 17;
 iteminfo  = "Adds 12 Agility and 9 Strength";
}

else if argument0=107
{
 itemname  = string("Enchanted Mithril Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 28;
 iteminfo  = "Adds 20 Agility and 16 Strength";
}

else if argument0=108
{
 itemname  = string("Enchanted Mystic Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 42;
 iteminfo  = "Adds 66 Agility and 20 Strength";
}

else if argument0=109
{
 itemname  = string("Enchanted Dragonic Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 63;
 iteminfo  = "Adds 100 Agility and 25 Strength";
}
 
else if argument0=110
{
 itemname  = string("Mystical Rendonan Boots");
 itemtype  = string("Foot Equipment");
 itemstack = 30
 itemlevel = 999;
 iteminfo  = "Adds 99999 Agility and 99999 Strength";
}
 
 /******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Earrings)
 ******************************************************************************************************/
 //argument0=111
else if argument0=111
{
 itemname  = string("Crystal Earrings");
 itemtype  = string("Ear Equipment");
 itemstack = 30
 itemlevel = 1;
 iteminfo  = "Adds 1 Agility, 1 Strength, 1 Defence#0.01 Attack-speed, 2 Attack-range, 5 Health#and 5 Stamina.";
}

else if argument0=112
{
 itemname  = string("Diamond Earrings");
 itemtype  = string("Ear Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 2 Agility, 2 Strength, 2 Defence#0.02 Attack-speed, 4 Attack-range, 15 Health#and 15 Stamina.";
}

else if argument0=113
{
 itemname  = string("Onyx Earrings");
 itemtype  = string("Ear Equipment");
 itemstack = 30
 itemlevel = 25;
 iteminfo  = "Adds 5 Agility, 5 Strength, 5 Defence#0.05 Attack-speed, 5 Attack-range, 40 Health#and 40 Stamina.";
}

else if argument0=114
{
 itemname  = string("Fire-zircon Earrings");
 itemtype  = string("Ear Equipment");
 itemstack = 30
 itemlevel = 40;
 iteminfo  = "Adds 10 Agility, 10 Strength, 10 Defence#0.08 Attack-speed, 10 Attack-range, 100 Health#and 100 Stamina.";
}

else if argument0=115
{
 itemname  = string("Tzavorite Earrings");
 itemtype  = string("Ear Equipment");
 itemstack = 30
 itemlevel = 55;
 iteminfo  = "Adds 15 Agility, 20 Strength, 10 Defence#0.10 Attack-speed, 15 Attack-range, 150 Health#and 150 Stamina.";
}
 
 /******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Ring1)
 ******************************************************************************************************/
 //argument0=116
else if argument0=116
{
 itemname  = string("Crystal Ring 1");
 itemtype  = string("Finger 1 Equipment");
 itemstack = 30
 itemlevel = 1;
 iteminfo  = "Adds 1 Agility, 1 Strength, 1 Defence#0.01 Attack-speed, 2 Attack-range, 5 Health#and 5 Stamina.";
}

else if argument0=117
{
 itemname  = string("Diamond Ring 1");
 itemtype  = string("Finger 1 Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 2 Agility, 2 Strength, 2 Defence#0.02 Attack-speed, 4 Attack-range, 15 Health#and 15 Stamina.";
}

else if argument0=118
{
 itemname  = string("Onyx Ring 1");
 itemtype  = string("Finger 1 Equipment");
 itemstack = 30
 itemlevel = 25;
 iteminfo  = "Adds 5 Agility, 5 Strength, 5 Defence#0.05 Attack-speed, 5 Attack-range, 40 Health#and 40 Stamina.";
}


else if argument0=119
{
 itemname  = string("Fire-zircon Ring 1");
 itemtype  = string("Finger 1 Equipment");
 itemstack = 30
 itemlevel = 40;
 iteminfo  = "Adds 10 Agility, 10 Strength, 10 Defence#0.08 Attack-speed, 10 Attack-range, 100 Health#and 100 Stamina.";
}

else if argument0=120
{
 itemname  = string("Tzavorite Ring 1");
 itemtype  = string("Finger 1 Equipment");
 itemstack = 30
 itemlevel = 55;
 iteminfo  = "Adds 15 Agility, 20 Strength, 10 Defence#0.10 Attack-speed, 15 Attack-range, 150 Health#and 150 Stamina.";
}
 
 /******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Ring2)
 ******************************************************************************************************/
 //argument0=121
else if argument0=121
{
 itemname  = string("Crystal Ring 2");
 itemtype  = string("Finger 2 Equipment");
 itemstack = 30
 itemlevel = 1;
 iteminfo  = "Adds 1 Agility, 1 Strength, 1 Defence#0.01 Attack-speed, 2 Attack-range, 5 Health#and 5 Stamina.";
}

else if argument0=122
{
 itemname  = string("Diamond Ring 2");
 itemtype  = string("Finger 2 Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 2 Agility, 2 Strength, 2 Defence#0.02 Attack-speed, 4 Attack-range, 15 Health#and 15 Stamina.";
}

else if argument0=123
{
 itemname  = string("Onyx Ring 2");
 itemtype  = string("Finger 2 Equipment");
 itemstack = 30
 itemlevel = 25;
 iteminfo  = "Adds 5 Agility, 5 Strength, 5 Defence#0.05 Attack-speed, 5 Attack-range, 40 Health#and 40 Stamina.";
}


else if argument0=124
{
 itemname  = string("Fire-zircon Ring 2");
 itemtype  = string("Finger 2 Equipment");
 itemstack = 30
 itemlevel = 40;
 iteminfo  = "Adds 10 Agility, 10 Strength, 10 Defence#0.08 Attack-speed, 10 Attack-range, 100 Health#and 100 Stamina.";
}

else if argument0=125
{
 itemname  = string("Tzavorite Ring 2");
 itemtype  = string("Finger 2 Equipment");
 itemstack = 30
 itemlevel = 55;
 iteminfo  = "Adds 15 Agility, 20 Strength, 10 Defence#0.10 Attack-speed, 15 Attack-range, 150 Health#and 150 Stamina.";
}
 
 /******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Ring3)
 ******************************************************************************************************/
 //argument0=126
 //argument0=121
else if argument0=126
{
 itemname  = string("Crystal Ring 3");
 itemtype  = string("Finger 3 Equipment");
 itemstack = 30
 itemlevel = 1;
 iteminfo  = "Adds 1 Agility, 1 Strength, 1 Defence#0.01 Attack-speed, 2 Attack-range, 5 Health#and 5 Stamina.";
}

else if argument0=127
{
 itemname  = string("Diamond Ring 3");
 itemtype  = string("Finger 3 Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 2 Agility, 2 Strength, 2 Defence#0.02 Attack-speed, 4 Attack-range, 15 Health#and 15 Stamina.";
}

else if argument0=128
{
 itemname  = string("Onyx Ring 3");
 itemtype  = string("Finger 3 Equipment");
 itemstack = 30
 itemlevel = 25;
 iteminfo  = "Adds 5 Agility, 5 Strength, 5 Defence#0.05 Attack-speed, 5 Attack-range, 40 Health#and 40 Stamina.";
}


else if argument0=129
{
 itemname  = string("Fire-zircon Ring 3");
 itemtype  = string("Finger 3 Equipment");
 itemstack = 30
 itemlevel = 40;
 iteminfo  = "Adds 10 Agility, 10 Strength, 10 Defence#0.08 Attack-speed, 10 Attack-range, 100 Health#and 100 Stamina.";
}

else if argument0=130
{
 itemname  = string("Tzavorite Ring 3");
 itemtype  = string("Finger 3 Equipment");
 itemstack = 30
 itemlevel = 55;
 iteminfo  = "Adds 15 Agility, 20 Strength, 10 Defence#0.10 Attack-speed, 15 Attack-range, 150 Health#and 150 Stamina.";
}
 
 /******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Ring4)
 ******************************************************************************************************/
 //argument0=131
 //argument0=121
else if argument0=131
{
 itemname  = string("Crystal Ring 4");
 itemtype  = string("Finger 4 Equipment");
 itemstack = 30
 itemlevel = 1;
 iteminfo  = "Adds 1 Agility, 1 Strength, 1 Defence#0.01 Attack-speed, 2 Attack-range, 5 Health#and 5 Stamina.";
}

else if argument0=132
{
 itemname  = string("Diamond Ring 4");
 itemtype  = string("Finger 4 Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 2 Agility, 2 Strength, 2 Defence#0.02 Attack-speed, 4 Attack-range, 15 Health#and 15 Stamina.";
}

else if argument0=133
{
 itemname  = string("Onyx Ring 4");
 itemtype  = string("Finger 4 Equipment");
 itemstack = 30
 itemlevel = 25;
 iteminfo  = "Adds 5 Agility, 5 Strength, 5 Defence#0.05 Attack-speed, 5 Attack-range, 40 Health#and 40 Stamina.";
}


else if argument0=134
{
 itemname  = string("Fire-zircon Ring 4");
 itemtype  = string("Finger 4 Equipment");
 itemstack = 30
 itemlevel = 40;
 iteminfo  = "Adds 10 Agility, 10 Strength, 10 Defence#0.08 Attack-speed, 10 Attack-range, 100 Health#and 100 Stamina.";
}

else if argument0=135
{
 itemname  = string("Tzavorite Ring 4");
 itemtype  = string("Finger 4 Equipment");
 itemstack = 30
 itemlevel = 55;
 iteminfo  = "Adds 15 Agility, 20 Strength, 10 Defence#0.10 Attack-speed, 15 Attack-range, 150 Health#and 150 Stamina.";
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
 itemname  = string("Wooden Sword");
 itemtype  = string("Right Hand Equipment");
 itemstack = 30
 itemlevel = 1;
 iteminfo  = "Adds 10% to base damage.";
 //learnchain1 = 1
}

else if argument0=137
{
 itemname  = string("Metal Sword");
 itemtype  = string("Right Hand Equipment");
 itemstack = 30
 itemlevel = 10;
 iteminfo  = "Adds 16% to base damage.";
 //learnchain1 = 1
}

else if argument0=138
{
 itemname  = string("Grand Sword");
 itemtype  = string("Right Hand Equipment");
 itemstack = 30
 itemlevel = 20;
 iteminfo  = "Adds 25% to base damage.";
 //learnchain1 = 1
}

else if argument0=139
{
 itemname  = string("Golden Spear");
 itemtype  = string("Right Hand Equipment");
 itemstack = 30
 itemlevel = 30;
 iteminfo  = "Adds 40% to base damage.";
 //learnchain1 = 2
}

else if argument0=140
{
 itemname  = string("Spear of Annihilation");
 itemtype  = string("Right Hand Equipment");
 itemstack = 30
 itemlevel = 40;
 iteminfo  = "Adds 55% to base damage.";
 //learnchain1 = 2
}

else if argument0=141
{
 itemname  = string("Flail of Persuasion");
 itemtype  = string("Right Hand Equipment");
 itemstack = 30
 itemlevel = 50;
 iteminfo  = "Adds 80% to base damage.";
 //learnchain1 = 3
}

else if argument0=142
{
 itemname  = string("Flail of Destruction");
 itemtype  = string("Right Hand Equipment");
 itemstack = 30
 itemlevel = 60;
 iteminfo  = "Adds 120% to base damage.";
 //learnchain1 = 3
}
 
 /******************************************************************************************************
  /////////////////////////////////////Equipment Collection (Shield)
 ******************************************************************************************************/
 //argument0=189
else if argument0=143
{
 itemname  = string("Wooden Shield");
 itemtype  = string("Left Hand Equipment");
 itemstack = 30
 itemlevel = 1;
 iteminfo  = "Adds 4 Defence and 40 Health";
}

else if argument0=144
{
 itemname  = string("Metal Shield");
 itemtype  = string("Left Hand Equipment");
 itemstack = 30
 itemlevel = 09;
 iteminfo  = "Adds 9 Defence and 70 Health";
}

else if argument0=145
{
 itemname  = string("Tower Shield");
 itemtype  = string("Left Hand Equipment");
 itemstack = 30
 itemlevel = 19;
 iteminfo  = "Adds 21 Defence and 130 Health";
}

else if argument0=146
{
 itemname  = string("Reinforced Shield");
 itemtype  = string("Left Hand Equipment");
 itemstack = 30
 itemlevel = 29;
 iteminfo  = "Adds 45 Defence and 200 Health";
}

else if argument0=147
{
 itemname  = string("Chevronic Shield");
 itemtype  = string("Left Hand Equipment");
 itemstack = 30
 itemlevel = 39;
 iteminfo  = "Adds 90 Defence and 600 Health";
}

else if argument0=148
{
 itemname  = string("Dimensional Shield");
 itemtype  = string("Left Hand Equipment");
 itemstack = 30
 itemlevel = 49;
 iteminfo  = "Adds 150 Defence and 1200 Health";
}

else if argument0=149
{
 itemname  = string("Dragonic Shield");
 itemtype  = string("Left Hand Equipment");
 itemstack = 30
 itemlevel = 59;
 iteminfo  = "Adds 175 Defence and 1500 Health";
}

 
 
/******************************************************************************************************
  /////////////////////////////////////EQUIPMENT COLLECTION 
 ******************************************************************************************************/

else
{
 itemname  = string("FAIL!!");
 itemtype  = string("sadness");
 itemstack = 1
 itemlevel = 999;
 iteminfo  = ("argument0: "+string(argument0));
}