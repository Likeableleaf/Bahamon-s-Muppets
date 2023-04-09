/// @description Insert description here
// You can write your code in this editor
if (image_index == 1 && 
	(direction <= point_direction(x, y, instance_nearest(x,y,obj_Player).x, instance_nearest(x,y,obj_Player).y) + 35 || 
	direction >= point_direction(x, y, instance_nearest(x,y,obj_Player).x, instance_nearest(x,y,obj_Player).y) - 35) &&
	instance_nearest(x,y,obj_Player).inDesk == true) {
		 instance_nearest(x,y,obj_Player).inDesk = false;
		 instance_nearest(x,y,obj_Player).image_angle -= 180;
	}