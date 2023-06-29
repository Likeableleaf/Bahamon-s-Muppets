/// @description Insert description here
// You can write your code in this editor
//audio_play_sound(Kick_empty, 10, false)
			dire = point_direction(x, y, instance_nearest(x,y,obj_emptyDesk).x, instance_nearest(x,y,obj_emptyDesk).y);
			with (other) {
				physics_apply_impulse(x, y, lengthdir_x(750, dire), lengthdir_y(750, dire));
			}
			if(canPlay) {
			audio_play_sound(Empty_kick2, 10, false)
			canPlay = false;
			}