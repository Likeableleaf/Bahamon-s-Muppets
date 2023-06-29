/// @description Insert description here
// You can write your code in this editor

//check if ai is in Desk
if instance_nearest(x,y,obj_simpleStudent).inDesk == true {
	if (buffer_time == 0) {
		// Check if player is you
		if (instance_nearest(x,y,obj_simpleStudent).id != owner && owner != noone) {
			//change ai state
			instance_nearest(x,y,obj_simpleStudent).inDesk = false;
			// boot player
			instance_nearest(x,y,obj_simpleStudent).freeze = true;
			dire = point_direction(x, y, instance_nearest(x,y,obj_simpleStudent).x, instance_nearest(x,y,obj_simpleStudent).y);
			with (other) {
				physics_apply_impulse(x, y, -lengthdir_x(750, dire), -lengthdir_y(750, dire));
			}
			if(canPlay) {
			audio_play_sound(Empty_kick2, 10, false)
			canPlay = false
			}
			instance_create_layer(x+30,y+30,"Instances", obj_emptyDesk)
			owner.object_index.hitsMade = owner.object_index.hitsMade + 1;
			// destroy kick
			instance_destroy(obj_kick)
		}
	}
}