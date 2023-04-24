/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 12; i++;) {
	player[i] = noone;	
}
// player count tracker
global.playerCount = 1;
// player cap set
global.playerCap = 9;
// set start locations
startLoc = [800, 1000, 1200, 800, 1000, 1200, 800, 1000, 1200, 350, 350, 350, 500, 500, 500, 650, 650, 650];
//generate mouse player
instance_create_layer(800, 350, "Instances", obj_studentInDesk);

//generate empty desks into start locations
for (i = 1; i < global.playerCap; i++) {
	instance_create_layer(startLoc[i], startLoc[i+9], "Instances", obj_emptyDesk);
}
