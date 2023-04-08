/// @description Insert description here
// You can write your code in this editor
// If student crawls into desk, spawn student in desk
if(instance_number(obj_studentInDesk) < 2){
instance_create_layer(x,y,"Instances", obj_studentInDesk)
}