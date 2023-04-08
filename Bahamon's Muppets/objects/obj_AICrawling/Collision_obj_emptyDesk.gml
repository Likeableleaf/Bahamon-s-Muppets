/// @description Insert description here
// You can write your code in this editor

// If student crawls into desk, spawn student in desk
instance_create_layer(x,y,"Instances", obj_simpleStudent)

instance_destroy(other);
instance_destroy();