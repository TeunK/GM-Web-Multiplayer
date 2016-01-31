//argument 0 is item id
//argument 1 is quantity 
var sid;
sid=string(argument0);
while string_length(sid)<3 sid="0"+sid;
ds_list_add(inv, sid+"/"+string(argument1));