/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("M"))){
	
	instance_destroy(obj_credits);
	layer_destroy("Credits");
	instance_destroy();
}

if(global.menuOpen){
	if(global.creditsOpened){
		event_user(0);
	}
}else{
event_user(1);
}