/// @description Insert description here
// You can write your code in this editor

// ALL CODE BELOW IS FOR CLAMPING BORDERS
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)

if (speed > 0) then speed -= 1/room_speed;