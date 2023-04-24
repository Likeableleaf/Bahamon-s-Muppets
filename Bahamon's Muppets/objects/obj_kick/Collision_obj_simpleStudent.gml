/// @description Insert description here
// You can write your code in this editor

//check if ai is in Desk
if instance_nearest(x,y,obj_simpleStudent).inDesk == true {
	// Check if player is you
	if (instance_nearest(x,y,obj_studentInDesk).id != owner) {
		//change ai state
		instance_nearest(x,y,obj_simpleStudent).inDesk = false;
		// boot player
		obj_simpleStudent.x += 50
		obj_simpleStudent.y += 50
		//generate emptyDesk
		instance_create_layer(x+10,y+10,"Instances", obj_emptyDesk)
		// destroy kick
		instance_destroy(obj_kick)
	}
}