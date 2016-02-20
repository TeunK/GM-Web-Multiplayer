//argument 0 = string, text of content
//argument 1 = color, color of text

//clear last chatlog
obj_Controller.chatlog[12]="";
obj_Controller.chatcolor[12]=c_white;

//scroll up each chat
for (i=12; i>=0; i-=1)
{
    obj_Controller.chatlog[i+1]=obj_Controller.chatlog[i];
    obj_Controller.chatcolor[i+1]=obj_Controller.chatcolor[i];
}

//add new chat
obj_Controller.chatlog[0]=argument0;
obj_Controller.chatcolor[0]=argument1;

//clean chat
//obj_Controller.text="";
//obj_Controller.keyboard_string="";
//obj_Controller.typing=0;




/***************************************************
  //MASTERCOMMAND FROM ADMIN
 ***************************************************/
var q, chattername, textcontent;

//separate name from thingy
if obj_Controller.chatconnected=1
{
    //show_message(argument0)
    q = string_pos(":",argument0);
    //show_message(": is found at position"+string(q));
    if q = 0 {
        chattername = "";
        textcontent = argument0;
        //show_message("q was not found (0) so there was no player that said it");
    } else {
        chattername = string_copy(argument0, 1, q - 1); //cmd is the command that affects the argument <cmd> <cmdtext>
        textcontent = string_copy(argument0, q + 1, string_length(argument0)-q); //cmdtext is the <argument>
        //show_message("a player said something, his name is: "+string(chattername));
        //show_message("he said: "+string(textcontent));
        scr_sayeffects(textcontent);
    }
 
    if textcontent = " /returnall " {obj_tdPlayer.x=room_width/2; obj_tdPlayer.y=room_height/2+200; room_goto(room_Town1);};
    if textcontent = " /bossall " {obj_tdPlayer.x=150; obj_tdPlayer.y=room_height-100; room_goto(room_Cave1)};
    
    if string_pos("/noticeall",textcontent)
    {
        //show_message("admin says"+string(textcontent));
        
        //string_delete(argument0,string_char_at(argument0,"/noticeall:"),string_length("/noticeall:"))
        //textcontent = string_replace(textcontent,"/noticeall:","");
        //show_message("stripped he says:"+string(textcontent));
        textcontent = string_replace(textcontent,"/noticeall ","");     
        obj_Controller.notice=1;
        obj_Controller.noticemsg=textcontent;
    }
    

}
