/// @description Insert description here
// You can write your code in this editor
// check if kicking
if (image_index == 1 && inDesk &&
	(direction <= point_direction(x, y, instance_nearest(x,y,obj_studentInDesk).x, instance_nearest(x,y,obj_studentInDesk).y) + 35 || 
	direction >= point_direction(x, y, instance_nearest(x,y,obj_studentInDesk).x, instance_nearest(x,y,obj_studentInDesk).y) - 35) && 
	instance_nearest(x,y,obj_studentInDesk).inDesk == true) {
		 instance_nearest(x,y,obj_studentInDesk).inDesk = false;
		 instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
}
