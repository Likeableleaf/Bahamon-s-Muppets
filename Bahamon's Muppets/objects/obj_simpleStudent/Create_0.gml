/// @description Insert description here
// You can write your code in this editor

alarm[0] = 60
canKick = true
alarm[1] = 30
canGrab = true
buffer_time = 0;
inDesk = false;

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