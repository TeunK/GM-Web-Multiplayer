//Quests
if global.quest1reward =   1
{
           obj_Controller.questscomplete+=1
           obj_Controller.ownexp+=30
           obj_Controller.money+=45
           obj_Controller.Questactive[1]=2
           obj_Controller.Questpart[1]=10
           obj_Controller.Questcanstart[0]=1
           with obj_INVslots
           {
                 item_pickup(136,1)
           }
           saypc("You have completed the quest!",c_yellow);
           saypc("Received 30 Experience",c_lime);
           saypc("Received 45 Coins",c_lime);
           saypc("Acquired <Wooden Sword>",c_lime)
           saypc("Press B to find the item in your bag.",c_lime);
           saypc("Right-click on the item to use it.",c_lime);
           global.quest1reward=2
}
if global.quest1reward >=2 {global.quest1reward=2}


//quest 2
if global.quest2reward =   1
{
           obj_Controller.questscomplete+=1
           obj_Controller.ownexp+=75
           obj_Controller.money+=20
           obj_Controller.Questactive[2]=2
           obj_Controller.Questpart[2]=10
           with obj_INVslots
           {
                 item_pickup(111,1)
           }
           saypc("You have completed the quest!",c_yellow);
           saypc("Received 75 Experience",c_lime);
           saypc("Received 20 Coins",c_lime);
           saypc("Acquired <Crystal Earrings>",c_lime)
           saypc("Press B to find the item in your bag.",c_lime);
           saypc("Right-click on the item to use it.",c_lime);
           global.quest2reward=2
}
if global.quest2reward >=2 {global.quest2reward=2}

//quest 3
if global.quest3reward =   1
{
           obj_Controller.questscomplete+=1
           obj_Controller.ownexp+=140
           obj_Controller.money+=50
           obj_Controller.Questactive[3]=2
           obj_Controller.Questpart[3]=10
           with obj_INVslots
           {
                 item_pickup(116,1)
                 item_pickup(131,1)
           }
           saypc("You have completed the quest!",c_yellow);
           saypc("Received 140 Experience",c_lime);
           saypc("Received 50 Coins",c_lime);
           saypc("Acquired <Crystal Ring 1>",c_lime)
           saypc("Acquired <Crystal Ring 4>",c_lime)          
           global.quest3reward=2
}
if global.quest3reward >=2 {global.quest3reward=2}


//quest 4
if global.quest4reward =   1
{
           obj_Controller.questscomplete+=1
           obj_Controller.ownexp+=155
           obj_Controller.money+=215
           obj_Controller.Questactive[4]=2
           obj_Controller.Questpart[4]=10
           saypc("You have completed the quest!",c_yellow);
           saypc("Received 155 Experience",c_lime);
           saypc("Received 215 Coins",c_lime);
           saypc("Acquired <Metal Sword>",c_lime)
           saypc("Acquired <Crystal Ring 2>",c_lime)
           saypc("Acquired <Crystal Ring 3>",c_lime)  
           saypc("Acquired <Diamond Ring 1>",c_lime)
           saypc("Acquired <Diamond Ring 4>",c_lime) 
           with obj_INVslots
           {
                 item_pickup(137,1)
                 item_pickup(121,1)
                 item_pickup(126,1)
                 item_pickup(117,1)
                 item_pickup(132,1)
           }
           global.quest4reward=2
}
if global.quest4reward >=2 {global.quest4reward=2}


/*
global.quest3reward =   0
global.quest4reward =   0
global.quest5reward =   0
global.quest6reward =   0
global.quest7reward =   0
global.quest8reward =   0