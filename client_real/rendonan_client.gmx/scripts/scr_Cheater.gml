
/***************************************************
  Cheater Command = "cheat=1"
 ***************************************************/
if admin=1
{

if keyboard_check_pressed(vk_escape) && room!=room_pIntro1 {game_end()}; 

//Skipping rooms
if keyboard_check_pressed(vk_pageup) {room_goto_next()};
if keyboard_check_pressed(vk_pagedown) {room_goto_previous()};

if keyboard_check_pressed(vk_shift) {obj_Controller.learnchain1+=1}
if keyboard_check_pressed(vk_home) {obj_Controller.learnchain1-=1}

//TimeWarp
if keyboard_check(ord('0')) {obj_Clock.hour+=1}
if keyboard_check(ord('9')) {obj_Clock.hour-=1}

if keyboard_check_pressed(ord('1')) {obj_Controller.armor_top=1}
if keyboard_check_pressed(ord('2')) {obj_Controller.armor_top=2}
if keyboard_check_pressed(ord('3')) {obj_Controller.armor_top=3}
if keyboard_check_pressed(ord('4')) {obj_Controller.armor_top=4}
if keyboard_check_pressed(ord('5')) {obj_Controller.armor_top=5}
if keyboard_check_pressed(ord('6')) {obj_Controller.armor_top=6}
if keyboard_check_pressed(ord('7')) {obj_Controller.armor_top=7}

//Fun fun
if keyboard_check(vk_down)
&& keyboard_check(ord('W'))
{
global.npc="Player:"
create=instance_create(x,y,obj_Chatbox)
Chatmode("GameMentor","Cheeeeeater cheater chiieeeaaater :3 "+string(round(0.2*obj_Controller.ownexptotal))+" Experience",1,0)
obj_Controller.ownexp+=0.2*obj_Controller.ownexptotal;
};

if keyboard_check(vk_up)
&& keyboard_check(ord('S'))
{
global.npc="Player:"
create=instance_create(x,y,obj_Chatbox)
Chatmode("GameMentor","Cheeeeeater cheater chiieeeaaater :3 "+string(round(0.2*obj_Controller.ownexptotal))+" Experience",1,0)
obj_Controller.ownexp+=0.2*obj_Controller.ownexptotal;
};

if keyboard_check(vk_right)
&& keyboard_check(ord('A'))
{
global.npc="Player:"
create=instance_create(x,y,obj_Chatbox)
Chatmode("GameMentor","Cheeeeeater cheater chiieeeaaater :3 "+string(round(0.2*obj_Controller.ownexptotal))+" Experience",1,0)
obj_Controller.ownexp+=0.2*obj_Controller.ownexptotal;
};

if keyboard_check(vk_left)
&& keyboard_check(ord('D'))
{
global.npc="Player:"
create=instance_create(x,y,obj_Chatbox)
Chatmode("GameMentor","Cheeeeeater cheater chiieeeaaater :3 "+string(round(0.2*obj_Controller.ownexptotal))+" Experience",1,0)
obj_Controller.ownexp+=0.2*obj_Controller.ownexptotal;
};

/*
if !keyboard_check(vk_shift)
{
if mouse_wheel_up() {view_angle[0]+=5}
if mouse_wheel_down() {view_angle[0]-=5}
if mouse_check_button_pressed(mb_right) && global.shakescreen=0 {global.shakescreen=5}
}

/*if keyboard_check(vk_shift)
{
window_set_region_scale(1,1)
if mouse_wheel_up() {width+=20;height+=20}
if mouse_wheel_down() {width-=20;height-=20}
}
*/

if keyboard_check(vk_control)
{
if keyboard_check(vk_shift)
{
if keyboard_check(ord('C'))
{

str=get_string("Insert Data:","");

if keyboard_check_pressed(ord('C'))
{obj_Controller.attackspeed+=1}

if keyboard_check_pressed(ord('V'))
{obj_Controller.learnchain1+=1}

if str = "playerposition"
{
    obj_tdPlayer.x = get_string("","X-axis");
    obj_tdPlayer.y = get_string("","y-axis");
}

if str = "attackspeed"
{
    obj_Controller.attackspeed = get_string("","attackspeed");
}
    
if str = "learnchain1"
{
    obj_Controller.learnchain1 = get_string("","Chain Length");
}
    
if str = "atkrange"
{
    obj_Controller.attackrange = get_string("","Attack Range");
}
    
//Possibly pick towns to spawn in :)    
/*if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
if get_string("Insert Data:","") = 
*/
}}}

}
