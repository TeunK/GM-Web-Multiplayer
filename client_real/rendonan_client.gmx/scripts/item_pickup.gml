//download items data from database
//var itemid;
//itemid=argument0;
//quantity=argument1;

//IMPLEMENT QUANTITY IN HERE!
//item_database();



//start loop
for (ii=0; ii<2; ii+=1)
{
    for (i=0; i<80; i+=1)
    {
        itemID[i]=ds_list_find_value(inv,i)
        itemQ[i]=ds_map_find_value(invQ,itemID[i])
        //test if item already exists in inventory
        if ii=0
        {
            //if so...
            if (itemID[i] = argument0)
            {
               //increase quantity of that item
               ds_map_replace(invQ,argument0,itemQ[i]+argument1)
               //SS_PlaySound(global.fx_Pickup);
               return(true)
               exit;
            }
        }
        //look for open slot in inventory [knowing item doesnt yet exist]
        if ii=1
        {
            if itemID[i] = 0
            {
                 //if slot is open, put item in there and set quantity to quantity of picked up item(s)
                 ds_list_replace(inv,i,argument0)
                 ds_map_replace(invQ,argument0,itemQ[i]+argument1)
                 //SS_PlaySound(global.fx_Pickup);
                 return (true);
                 exit;
            }
            //if no empty slot found
            else if (itemID[i] != 0)
            {
                //if final check, but still not
                if (i>=79)
                {
                    //Show Warning
                    create=instance_create(x,y,obj_Chatbox);
                    create.colorspec=c_red;
                    Chatmode("Warning","Your Inventory is full!",1,0);
                    return 0;
                    exit;
                }
            }
        }
    }
}
