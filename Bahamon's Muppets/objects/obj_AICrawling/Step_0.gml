/// @description Insert description here
// You can write your code in this editor
var dx, dy
dx = instance_nearest(x,y,obj_emptyDesk).x;
dy = instance_nearest(x,y,obj_emptyDesk).y;
direction = point_direction(x, y, dx, dy)
// Set the rotation of student to match mouse
image_angle = point_direction(x, y, dx, dy) + -90
// Check if space bar is pressed
if (instance_exists(obj_emptyDesk)) {
	// Set sprite to kick
	image_index = 1
	// Set speed
	speed = 1
} else {
	if(speed != 0) {
	// Slow down student
	speed -= 0.2
	}
	// Set sprite to regular
	image_index = 0
}

// ALL CODE BELOW IS FOR CLAMPING BORDERS
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)