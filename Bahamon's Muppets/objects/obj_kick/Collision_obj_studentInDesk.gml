/// @description Insert description here
// You can write your code in this editor

//check if player is in Desk
if instance_nearest(x,y,obj_studentInDesk).inDesk == true {
	if (buffer_time == 0) {
		// Check if player is you
		if (instance_nearest(x,y,obj_studentInDesk).id != owner && owner != noone) {
			//change ai state
			instance_nearest(x,y,obj_studentInDesk).inDesk = false;
			// boot player
			instance_nearest(x,y,obj_studentInDesk).freeze = true;
			other.dire = point_direction(x, y, instance_nearest(x,y,obj_studentInDesk).x, instance_nearest(x,y,obj_studentInDesk).y);
			with (other) {
				physics_apply_impulse(x, y, lengthdir_x(750, dire), lengthdir_y(750, dire));
			}
			if(canPlay){
			audio_play_sound(Empty_kick2, 10, false)
			canPlay = true
			}
			//alarm[1] = 5
			//obj_simpleStudent.x += 20
			//obj_simpleStudent.y += 20
			//generate emptyDesk
			instance_create_layer(x+10,y+10,"Instances", obj_emptyDesk)
			owner.object_index.hitsMade = owner.object_index.hitsMade + 1;
			// destroy kick
			instance_destroy(obj_kick)
		}
	}
}