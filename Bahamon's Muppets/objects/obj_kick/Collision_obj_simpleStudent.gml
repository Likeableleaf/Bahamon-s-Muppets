/// @description Insert description here
// You can write your code in this editor

//check if ai is in Desk
if instance_nearest(x,y,obj_simpleStudent.inDesk == true) {
	//change ai state
	instance_nearest(x,y,obj_simpleStudent.inDesk = false);
	//generate emptyDesk
	instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
}