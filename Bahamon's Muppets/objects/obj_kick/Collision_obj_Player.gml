/// @description Insert description here
// You can write your code in this editor

//check if player is in Desk
if instance_nearest(x,y,obj_Player.inDesk == true) {
	if (buffer_time == 0) {
	// Check if player is you
		if (instance_nearest(x,y,obj_Player).id != owner && owner != noone) {
			//change player state
			instance_nearest(x,y,obj_Player.inDesk = false);
			//generate emptyDesk
			instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
			// destroy kick
			instance_destroy()
		}	
	}
}