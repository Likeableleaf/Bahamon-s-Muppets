/// @description Insert description here
// You can write your code in this editor

//check if player is in Desk
if instance_nearest(x,y,obj_studentInDesk).inDesk == true{
	// Check if player is you
	if (instance_nearest(x,y,obj_studentInDesk).id != owner) {
		//change player state
		instance_nearest(x,y,obj_studentInDesk).inDesk = false;
		// boot player
		obj_studentInDesk.x += 20
		obj_studentInDesk.y += 20
		//generate emptyDesk
		instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
		// destroy kick
		instance_destroy(obj_kick);
	}
}