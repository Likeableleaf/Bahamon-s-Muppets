/// @description Insert description here
// You can write your code in this editor
if (!inDesk && buffer_time == 0) {
inDesk = true
bailSavesMade = bailSavesMade +1;
//image_angle += 180;
instance_destroy(instance_nearest(x,y,obj_emptyDesk));
speed = 0;
} /*else if (inDesk) {
	instance_nearest(x,y,obj_emptyDesk).direction = point_direction(x, y, instance_nearest(x,y,obj_emptyDesk).x, instance_nearest(x,y,obj_emptyDesk).y)
	instance_nearest(x,y,obj_emptyDesk).speed = 2;
}*/