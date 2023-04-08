/// @description Insert description here
// You can write your code in this editor
// If student crawls into desk, spawn student in desk
instance_create_layer(x,y,"Instances", obj_studentInDesk)
instance_destroy(obj_emptyDesk);
instance_destroy();