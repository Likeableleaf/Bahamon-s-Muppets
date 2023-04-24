/// @description Insert description here
// You can write your code in this editor
if instance_nearest(x,y,obj_Player).inDesk == true {
	// Check if player is you
		//change ai state
		instance_nearest(x,y,obj_Player).inDesk = false;
		// boot player
		//instance_nearest(x,y,obj_simpleStudent).direction = point_direction(x, y, instance_nearest(x,y,obj_simpleStudent).x, instance_nearest(x,y,obj_simpleStudent).y)
		//instance_nearest(x,y,obj_simpleStudent).speed = 2;
		//obj_simpleStudent.x += 20
		//obj_simpleStudent.y += 20
		//generate emptyDesk
		instance_create_layer(x+10,y+10,"Instances", obj_emptyDesk)
		// destroy kick
		instance_destroy(obj_throwable)
} else {
	instance_destroy(instance_nearest(x,y,obj_Player))
}