// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_on_click_play(){
show_debug_message("Button play clicked" + text );
global.started = true;

//create AI in empty player slots 
for (i = global.playerCount; i < global.playerCap; i++) {
	instance_create_layer(obj_controller.startLoc[i], obj_controller.startLoc[i+9], "Instances", obj_simpleStudent);
	global.playerCount++;
}
}