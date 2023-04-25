/// @description Insert description here
// You can write your code in this editor

//check if ai is in Desk
if instance_nearest(x,y,obj_simpleStudent).inDesk == true {
	if (buffer_time == 0) {
		// Check if player is you
		if (instance_nearest(x,y,obj_simpleStudent).id != owner && owner != noone) {
			//change ai state
			instance_nearest(x,y,obj_simpleStudent).inDesk = false;
			instance_nearest(x,y,obj_simpleStudent).speed = 6;
			instance_create_layer(x+30,y+30,"Instances", obj_emptyDesk)
			owner.object_index.hitsMade = owner.object_index.hitsMade + 1;
			// destroy kick
			instance_destroy(obj_kick)
		}
	}
}