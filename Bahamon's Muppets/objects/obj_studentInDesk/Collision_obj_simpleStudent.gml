/// @description Insert description here
// You can write your code in this editor

// check if kicking
if (image_index == 1 && 
	(direction <= point_direction(x, y, instance_nearest(x,y,obj_studentInDesk).x, instance_nearest(x,y,obj_studentInDesk).y) + 35 || 
	direction >= point_direction(x, y, instance_nearest(x,y,obj_studentInDesk).x, instance_nearest(x,y,obj_studentInDesk).y) - 35)) {
	// Destroy simple student 
	instance_destroy(obj_simpleStudent)
	// Create crawling student AI if kicked out desk
	instance_create_layer(x, y, "Instances", obj_AICrawling)
}