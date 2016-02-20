//argument 0 is the position in list (list first position is 0)
position=argument0;
var s,p;
s=ds_list_find_value(inv,position); 
p=string_pos("/",s);
get_i=real(string_copy(s,1,p-1));
get_q=real(string_copy(s,p+1,string_length(s)-p));
//Note: This function changes get_i & get_q variables , so the object
//that calls this function must have get_i & get_q initialized to 0
