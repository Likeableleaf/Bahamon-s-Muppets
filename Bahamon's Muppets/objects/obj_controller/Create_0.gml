/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 12; i++;) {
	player[i] = noone;	
}
playerCount = 1;
playerCap = 9;
instance_create_layer(800, 350, "Instances", obj_studentInDesk);
instance_create_layer(1000, 350, "Instances", obj_emptyDesk);
instance_create_layer(1200, 350, "Instances", obj_emptyDesk);
instance_create_layer(800, 500, "Instances", obj_emptyDesk);
instance_create_layer(1000, 500, "Instances", obj_emptyDesk);
instance_create_layer(1200, 500, "Instances", obj_emptyDesk);
instance_create_layer(800, 650, "Instances", obj_emptyDesk);
instance_create_layer(1000, 650, "Instances", obj_emptyDesk);
instance_create_layer(1200, 650, "Instances", obj_emptyDesk);
