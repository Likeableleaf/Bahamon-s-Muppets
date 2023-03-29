/// @description Insert description here
// Set direction of student to match mouse
direction = point_direction(x, y, mouse_x, mouse_y)
// Set the rotation of student to match mouse
image_angle = point_direction(x, y, mouse_x, mouse_y)
// Check if space bar is pressed
if (keyboard_check_pressed(vk_space)) {
	// Set vspeed
	vspeed = 4
}