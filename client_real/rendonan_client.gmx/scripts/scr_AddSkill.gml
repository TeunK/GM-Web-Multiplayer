//start loop
//argument0=skill ID (which skill)
//argument1=position to place skill

for (ii=0; ii<2; ii+=1)
{

    for (i=0; i<7; i+=1)
    {
    
        slot[i]=ds_list_find_value(skills,i);
    
        if (slot[i] = argument0 && ii=0)
        {
        
            ds_list_replace(skills,i,0);
            ds_list_replace(skills,argument1-1,argument0);
            return (true);
            exit;
        
        }
        
        if (slot[i] != argument0 && ii=1)
        {
        
            ds_list_replace(skills,argument1-1,argument0);
            return (true);
            exit;
        
        }
    
    }

}
