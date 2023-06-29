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
	
// Variable to hold left stick horizontal rotation
var h_point = gamepad_axis_value(pad_num, gp_axislv);
// Variable to hold left stick vertical rotation
var v_point = -gamepad_axis_value(pad_num, gp_axislh);
// Check if left stick is moving
if ((h_point != 0) || (v_point != 0) && !freeze)
    {
    var pdir = point_direction(0, 0, h_point, v_point);
    var dif = angle_difference(pdir, dire)-90;
	dire += median(-20, dif, 20);
	phy_rotation = -(dire -90);
    }


if(global.menuOpen == false) {
// Check if 'A' button pressed
if (gamepad_button_check_pressed(pad_num, gp_face1) && !freeze)
    {
	/*// Set sprite to kick
	image_index = 1//*/
	// Set speed
	if(inDesk){

		//instance_create_layer(x+lengthdir_x(32,direction),y+lengthdir_y(32,direction),"Instances",obj_kick);

		if (buffer_time > 0) then buffer_time -= 1/room_speed;
		
		instance_create_layer(x+lengthdir_x(32,dire),y+lengthdir_y(32,dire),"Instances",obj_kick)

		kicksMade = kicksMade + 1;
		instance_nearest(x, y, obj_kick).owner = id
		instance_nearest(x, y, obj_kick).phy_rotation = phy_rotation
		//speed = -4
		physics_apply_impulse(x, y, lengthdir_x(500, dire), lengthdir_y(500, dire));
	} else {
		//speed = 4;
		physics_apply_impulse(x, y, lengthdir_x(500, dire), lengthdir_y(500, dire));
	}
} else {
	/*if(speed != 0) {
	
		// Slow down student
		if(inDesk && speed < 0){
			speed += 0.2
		}else if (speed > 0) {
			
			speed -= 0.2;
		}else if (speed > -0.1 && speed < 0.1)
			
			speed = 0;	
		}
	*/
	// Set sprite to regular
	image_index = 0
}
}

if (buffer_time == 0) {
	freeze = false;
}

//swap between in desk and crawling
if inDesk {
	sprite_index = spr_studentInDeskV1;
} else if (!inDesk && buffer_time == 0)  {
	buffer_time = 1;
	sprite_index = spr_studentCrawl;
} else if (obj_teacher.greenlight == false && !inDesk) {
	//kill the ai simple student if teacher is in redlight and ai is out of desk
		instance_destroy(instance_nearest(x,y,obj_Player));
} else {
	sprite_index = spr_studentCrawl;
//instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
}


//decrement the buffer over time
if (buffer_time > 0) then buffer_time -= 1/room_speed;

// ALL CODE BELOW IS FOR CLAMPING BORDERS
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2+80, room_height-sprite_height)

obj_mileStones.owner = id;