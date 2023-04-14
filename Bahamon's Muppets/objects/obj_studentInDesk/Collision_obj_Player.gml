/// @description Insert description here
// You can write your code in this editor
if (image_index == 1 && inDesk &&
	(direction <= point_direction(x, y, instance_nearest(x,y,obj_Player).x, instance_nearest(x,y,obj_Player).y) + 35 || 
	direction >= point_direction(x, y, instance_nearest(x,y,obj_Player).x, instance_nearest(x,y,obj_Player).y) - 35) &&
	instance_nearest(x,y,obj_Player).inDesk == true) {
		 instance_nearest(x,y,obj_Player).inDesk = false;
		 instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
		 instance_nearest(x,y,obj_Player).image_angle -= 180;
		 speed = 0;
	}