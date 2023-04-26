/// @description Insert description here
// You can write your code in this editor
// Leave behind empty desk at student
//instance_create_layer(obj_studentInDesk.x, obj_studentInDesk.y,"Instances",obj_emptyDesk)
if instance_nearest(x,y,obj_studentInDesk).inDesk == true {
	// Check if player is you
		//change ai state
		instance_nearest(x,y,obj_studentInDesk).inDesk = false;
		// boot player
			instance_nearest(x,y,obj_studentInDesk).freeze = true;
			instance_nearest(x,y,obj_studentInDesk).direction = point_direction(x, y, instance_nearest(x,y,obj_studentInDesk).x, instance_nearest(x,y,obj_studentInDesk).y);
			instance_nearest(x,y,obj_studentInDesk).speed = 2;
			//obj_simpleStudent.x += 20
		//obj_simpleStudent.y += 20
		//generate emptyDesk
		instance_create_layer(x+10,y+10,"Instances", obj_emptyDesk)
		// destroy kick
		instance_destroy()
} else {
	instance_destroy(instance_nearest(x,y,obj_studentInDesk))
}