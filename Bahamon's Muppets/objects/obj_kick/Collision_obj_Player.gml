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
			//instance_nearest(x,y,obj_Player).direction = point_direction(x, y, instance_nearest(x,y,obj_Player).x, instance_nearest(x,y,obj_Player).y)
			//instance_nearest(x,y,obj_Player).speed = 2;
			instance_nearest(x,y,obj_Player).speed = -10;
			alarm[2] = 5
			//obj_simpleStudent.x += 20
			//obj_simpleStudent.y += 20
			//generate emptyDesk
			instance_create_layer(x+10,y+10,"Instances", obj_emptyDesk)
			// destroy kick
			instance_destroy(obj_kick)
		}
	}
}