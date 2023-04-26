/// @description Insert description here
// You can write your code in this editor
// If student crawls into desk, spawn student in desk
if (buffer_time == 0) {
	instance_create_layer(x,y,"Instances", obj_studentInDesk)
	instance_destroy(instance_nearest(x,y,obj_emptyDesk));
	instance_destroy();
}