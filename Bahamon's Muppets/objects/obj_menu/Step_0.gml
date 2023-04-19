/// @description Insert description here
// You can write your code in this editor
if((keyboard_check_pressed(ord("M")) || keyboard_check_pressed(vk_escape) )&& global.menustartclosed == true){
	global.menuOpen = !global.menuOpen
	
}

if(global.menuOpen){
event_user(0);
}else if (not global.menuOpen and instance_exists(obj_teacher)){
event_user(1);
} else {
	event_user(2);
}
