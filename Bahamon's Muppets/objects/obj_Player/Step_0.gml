/// @description Insert description here
// You can write your code in this editor

// Variable to hold left stick horizontal movement
//var h_move = gamepad_axis_value(pad_num, gp_axislh);
// Variable to hold left stick vertical movement
//var v_move = gamepad_axis_value(pad_num, gp_axislv);
// Check if the left stick is moving
//if ((h_move != 0) || (v_move != 0))
   // {
	// Move in x direction
    //x += h_move * 4;
	// Move in y direction
    //y += v_move * 4;
   // }
	
// Variable to hold right stick horizontal rotation
var h_point = gamepad_axis_value(pad_num, gp_axisrh);
// Variable to hold right stick vertical rotation
var v_point = gamepad_axis_value(pad_num, gp_axisrv);
// Check if right stick is moving
if ((h_point != 0) || (v_point != 0))
    {
    var pdir = point_direction(0, 0, h_point, v_point);
    var dif = angle_difference(pdir, image_angle);
    image_angle += median(-20, dif, 20);
    }

// Check if 'A' button pressed
if gamepad_button_check_pressed(pad_num, gp_face1)
    {
	// Set sprite to kick
	image_index = 1
	// Set speed
	speed = -4
} else {
	if(speed != 0) {
	// Slow down student
	speed += 0.2
	}
	// Set sprite to regular
	image_index = 0
}