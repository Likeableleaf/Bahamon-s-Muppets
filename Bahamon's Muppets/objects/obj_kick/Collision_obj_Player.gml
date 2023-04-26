/// @description Insert description here
// You can write your code in this editor

//check if player is in Desk
if instance_nearest(x,y,obj_Player).inDesk == true {
	if (buffer_time == 0) {
		// Check if player is you
		if (instance_nearest(x,y,obj_Player).id != owner && owner != noone) {
			//change ai state
			instance_nearest(x,y,obj_Player).inDesk = false;
			// boot player
			instance_nearest(x,y,obj_Player).speed = 6;
			audio_play_sound(Empty_kick2, 10, false)
			//generate emptyDesk
			instance_create_layer(x+10,y+10,"Instances", obj_emptyDesk)
			owner.object_index.hitsMade = owner.object_index.hitsMade + 1;
			// destroy kick
			instance_destroy(obj_kick)
		}
	}
}