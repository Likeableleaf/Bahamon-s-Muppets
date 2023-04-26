/// @description Insert description here
// You can write your code in this editor
// Call alarm to destroy obj_kick
alarm[0] = 10
// Set owner
owner = noone;
canPlay = true
//owner = instance_nearest(x,y,other).id
buffer_time = 1/room_speed

//if(place_empty(x,y,obj_simpleStudent) and place_empty(x,y,obj_studentInDesk) and place_empty(x,y,obj_Player) and obj_simpleStudent.id != owner and obj_Player.id != owner and obj_studentInDesk.id != owner) {
audio_play_sound(Empty_kick_soft, 10, false)
//}