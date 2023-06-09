/// @description Insert description here
// Set direction of student to match mouse
if ( !freeze) {
dire = point_direction(x, y, mouse_x, mouse_y)
}
// Set the rotation of student to match mouse
phy_rotation = -point_direction(x, y, mouse_x, mouse_y) + 90
// Check if space bar is pressed
if(global.menuOpen == false) {
	if (keyboard_check_pressed(vk_space) && !freeze) {
	// Set sprite to kick
	//image_index = 1		// Set speed
		if(inDesk){
			instance_create_layer(x+lengthdir_x(32,dire),y+lengthdir_y(32,dire),"Instances",obj_kick);
			obj_kick.owner = id
			obj_kick.phy_rotation = phy_rotation
			kicksMade = kicksMade + 1;
			//speed = -4
			physics_apply_impulse(x, y, -lengthdir_x(500, dire), -lengthdir_y(500, dire));
	}else{
	//speed = 4;
	
	physics_apply_impulse(x, y, lengthdir_x(250, dire), lengthdir_y(250, dire));
	}
	
}/* else {
	if(speed != 0) {
	// Slow down student
	if(inDesk){
	speed += 0.2
	}else{
	speed -= 0.2;
	}
	// Set sprite to regular
	image_index = 0
}
}*/
}

//swap between in desk and crawling
if inDesk {
	sprite_index = spr_studentInDeskV1;
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

if (buffer_time == 0) {
	freeze = false;
}
//