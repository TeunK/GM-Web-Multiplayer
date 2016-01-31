/******************************************************************************************************

         ################################## Item Effects ####################################
  
 ******************************************************************************************************/
 
 
 
 
 
/***************************************************
  $$$$$$$$$$$$$$$$$$ Consumables $$$$$$$$$$$$$$$$$$$
 ***************************************************/

SS_PlaySound(global.fx_Potion);

//itemID[i*8+ii]_effects();
 if itemID[i*8+ii]=2  //Small Health Potion
     {
      obj_Controller.ownhealth+=40;
     }
     
 if itemID[i*8+ii]=3  //Small Stamina Potion
     {
      obj_Controller.ownsp+=40;
     }
 if itemID[i*8+ii]=4  //Small Rejuvation Potion
     {
      obj_Controller.ownhealth+=60;
      obj_Controller.ownsp+=60;
     }
     
 if itemID[i*8+ii]=5  //Medium Health Potion
     {
      obj_Controller.ownhealth+=120;
     }
 if itemID[i*8+ii]=6  //Medium Stamina Potion
     {
      obj_Controller.ownsp+=120;
     }
     
 if itemID[i*8+ii]=7  //Medium Rejuvation Potion
     {
      obj_Controller.ownhealth+=200;
      obj_Controller.ownsp+=200;
     }
 
  if itemID[i*8+ii]=8  //Large Health Potion
     {
      obj_Controller.ownhealth+=500;
     }
  
   if itemID[i*8+ii]=9  //Large Stamina Potion
     {
      obj_Controller.ownsp+=500;
     }
   
    if itemID[i*8+ii]=10  //Large Rejuvation Potion
     {
      obj_Controller.ownhealth+=1000;
      obj_Controller.ownsp+=1000;
     }
     
   if itemID[i*8+ii]=11  //Fixed Health Potion
     {
      obj_Controller.ownhealth+=0.4*obj_Controller.ownhealthtotal;
     }
  
   if itemID[i*8+ii]=12  //Fixed Stamina Potion
     {
      obj_Controller.ownsp+=0.4*obj_Controller.ownsptotal;
     }
   
    if itemID[i*8+ii]=13  //Fixed Rejuvation Potion
     {
      obj_Controller.ownhealth+=0.5*obj_Controller.ownhealthtotal;
      obj_Controller.ownsp+=0.5*obj_Controller.ownsptotal;
     }
 
   if itemID[i*8+ii]=14  //Blast Health Potion
     {
      obj_Controller.ownhealth+=0.6*obj_Controller.ownhealthtotal;
     }
  
   if itemID[i*8+ii]=15  //Blast Stamina Potion
     {
      obj_Controller.ownsp+=0.6*obj_Controller.ownsptotal;
     }
   
    if itemID[i*8+ii]=16  //Blast Rejuvation Potion
     {
      obj_Controller.ownhealth+=0.7*obj_Controller.ownhealthtotal;
      obj_Controller.ownsp+=0.7*obj_Controller.ownsptotal;
     }
    
   if itemID[i*8+ii]=17  //Dragonic Health Potion
     {
      obj_Controller.ownhealth+=0.9*obj_Controller.ownhealthtotal;
     }
  
   if itemID[i*8+ii]=18  //Dragonic Stamina Potion
     {
      obj_Controller.ownsp+=0.9*obj_Controller.ownsptotal;
     }
   
    if itemID[i*8+ii]=19  //Dragonic Rejuvation Potion
     {
      obj_Controller.ownhealth+=1*obj_Controller.ownhealthtotal;
      obj_Controller.ownsp+=1*obj_Controller.ownsptotal;
     }
     