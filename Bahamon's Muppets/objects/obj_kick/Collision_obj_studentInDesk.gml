/// @description Insert description here
// You can write your code in this editor

//check if player is in Desk
if instance_nearest(x,y,obj_studentInDesk).inDesk == true) {
	//change player state
	instance_nearest(x,y,obj_studentInDesk).inDesk = false;
	//generate emptyDesk
	instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
}