/// @description Insert description here
// You can write your code in this editor

//check if ai is in Desk
if instance_nearest(x,y,obj_simpleStudent).inDesk == true {
	if (buffer_time == 0) {
		// Check if player is you
		if (instance_nearest(x,y,obj_simpleStudent).id != owner && owner != noone) {
			//change ai state
			instance_nearest(x,y,obj_simpleStudent).inDesk = false;
			//instance_nearest(x,y,obj_simpleStudent).imageColor = owner.object_index.imageColor
			// boot player
			//instance_nearest(x,y,obj_simpleStudent).direction = 
			//var dirct = point_direction(x,y,instance_nearest(x,y,obj_simpleStudent).x, instance_nearest(x,y,obj_simpleStudent).y)
			//var knockback = -8
			//obj_simpleStudent.motion_set(dirct, knockback);
			//var dir = point_direction(obj_simpleStudent.x, obj_simpleStudent.y, x, y);
			//instance_nearest(x,y,obj_simpleStudent).speed = motion_add(dir, knockback_strength);
			//alarm[1] = 5
			//obj_simpleStudent.x += 20
			//obj_simpleStudent.y += 20
			//generate emptyDesk
			instance_create_layer(x+30,y+30,"Instances", obj_emptyDesk)
			owner.object_index.hitsMade = owner.object_index.hitsMade + 1;
			// destroy kick
			instance_destroy(obj_kick)
		}
	}
}