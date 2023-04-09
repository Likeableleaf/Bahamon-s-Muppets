/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// Set direction of student to match mouse
direction = point_direction(x, y, mouse_x, mouse_y)
// Set the rotation of student to match mouse
image_angle = point_direction(x, y, mouse_x, mouse_y) + -90
// Check if space bar is pressed
if (keyboard_check_pressed(vk_space)) {
	// Set sprite to kick
	image_index = 1
	// Set speed
	speed = 4
} else {
	if(speed != 0) {
	// Slow down student
	speed -= 0.2
	}
	// Set sprite to regular
	image_index = 0
}
//decrement the buffer over time
if (buffer_time > 0) then buffer_time -= 1/room_speed;

// ALL CODE BELOW IS FOR CLAMPING BORDERS
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)


