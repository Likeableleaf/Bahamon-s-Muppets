/// @description Insert description here
// You can write your code in this editor
// check if kicking
/*
if (image_index == 1 && inDesk &&
	(direction <= point_direction(x, y, instance_nearest(x,y,obj_simpleStudent).x, instance_nearest(x,y,obj_simpleStudent).y) + 35 || 
	direction >= point_direction(x, y, instance_nearest(x,y,obj_simpleStudent).x, instance_nearest(x,y,obj_simpleStudent).y) - 35) &&
	instance_nearest(x,y,obj_simpleStudent).inDesk == true) {
		 instance_nearest(x,y,obj_simpleStudent).inDesk = false;
		 instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
}//*/
/*
if (instance_nearest(x, y, obj_simpleStudent).speed > speed) {
	instance_nearest(x,y,obj_simpleStudent).direction = direction;
	instance_nearest(x,y,obj_simpleStudent).speed = speed;
} else if (instance_nearest(x, y, obj_simpleStudent).speed > speed) {
	direction = instance_nearest(x,y,obj_simpleStudent).direction
	speed = instance_nearest(x,y,obj_simpleStudent).speed;
} else {
	direction = -point_direction(x, y, instance_nearest(x,y,obj_simpleStudent).x, instance_nearest(x,y,obj_simpleStudent).y);
	speed = 0.1;
}//*/