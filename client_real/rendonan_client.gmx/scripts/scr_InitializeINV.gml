/*
  scr_InitializeINV();
  Initialize Inventory
*/

inv = ds_grid_create(7, 8);
ds_grid_clear(inv,"Empty");



//Set an ID for each box
var invID, xx, yy;
for (yy=0; yy < ds_grid_width(inv); yy+=1)
{
 for (xx=0; xx < ds_grid_height(inv); xx+=1)
     {
      ds_grid_set(inv,xx,yy,invID)
      invID+=1;
     }
}

//move_snap(