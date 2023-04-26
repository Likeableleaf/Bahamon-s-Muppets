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
startLoc = [700, 1100, 1500, 700, 1100, 1500, 700, 1100, 1500, 350, 350, 350, 600, 600, 600, 850, 850, 850];
//generate mouse player
instance_create_layer(startLoc[0], startLoc[9], "Instances", obj_studentInDesk);

//generate empty desks into start locations
for (i = 1; i < global.playerCap; i++) {
	instance_create_layer(startLoc[i], startLoc[i+9], "Instances", obj_emptyDesk);
}
