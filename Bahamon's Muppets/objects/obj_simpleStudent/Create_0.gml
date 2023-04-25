/// @description Insert description here
// You can write your code in this editor

alarm[0] = 60
canKick = true
alarm[1] = 30
canGrab = true
buffer_time = 0;
inDesk = false;
chosenID = noone;
hitsMade = 0;

hsp = 0;
vsp = 0;


playerNum = global.playerCount;

//set player color
switch(playerNum) {
    case 1:
        imageColor = c_lime;
        break;
    case 2:
        imageColor = c_red;
        break;
    case 3:
        imageColor = c_orange;
        break;
    case 4:
        imageColor = c_olive;
        break;
    case 5:
        imageColor = c_blue;
        break;
    case 6:
        imageColor = c_purple;
        break;
    case 7:
        imageColor = c_fuchsia;
        break;
    case 8:
        imageColor = c_teal;
        break;
    case 9:
        imageColor = c_aqua;
        break;
}
temp = 0
for (var i = 0; i < instance_number(obj_Player); ++i;)
{
    numbPlayers[i] = instance_find(obj_Player,i);
	temp ++;
}
for (var i = temp; i < instance_number(obj_simpleStudent); ++i;)
{
    numbPlayers[i] = instance_find(obj_simpleStudent,i);
	temp ++;
}
for (var i = temp; i < instance_number(obj_studentInDesk); ++i;)
{
    numbPlayers[i] = instance_find(obj_studentInDesk,i);
	temp ++;
}