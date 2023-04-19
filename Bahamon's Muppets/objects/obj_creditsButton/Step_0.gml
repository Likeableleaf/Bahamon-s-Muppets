/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("M"))){
	
	room_goto_previous();
}

if(global.menuOpen){
event_user(0);
}else{
event_user(1);
}