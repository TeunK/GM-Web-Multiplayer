//argument0 = itemID
//argument1 = which data do you want; itemname | itemtype | itemstack | itemlevel | iteminfo

var itemname, itemtype, itemstack, itemlevel, iteminfo

//scan through item_database looking for item and return values
item_database(argument0);

//return the value wished for
return argument1;
