/// @description Insert description here
if (inDesk) {
if (canKick == true && (instance_exists(obj_studentInDesk))) {
	// Set sprite to kick
	//image_index = 1
	// Generate direction towards other students
	var px, py
	px = instance_nearest(x,y,obj_studentInDesk).x;
	py = instance_nearest(x,y,obj_studentInDesk).y;
	// checks if player is in range
	if (distance_to_object(instance_nearest(x,y,obj_studentInDesk)) <= 30) {
	//points to kick player
	direction = point_direction(x, y, px, py) + 180	
	image_angle = point_direction(x, y, px, py) + -90;
	} else {
	image_angle = point_direction(x, y, px, py) + -270;
	direction = point_direction(x, y, px, py) //+ irandom_range(-20,20)
	// Set direction to the generated direction
	}
	// Set speed
	speed += 4
	// Set canKick to false
	canKick = false
	// Reset alarm
	alarm[1] = 60
	instance_create_layer(x+lengthdir_x(32,direction),y+lengthdir_y(32,direction),"Instances",obj_kick);
	obj_kick.owner = id
	obj_kick.image_angle = image_angle
} else {
	if(vspeed != 0) {
	// Slow down student
	speed -= 0.2
	}
	// Set sprite to regular
	image_index = 0
}} else {
	var dx, dy
dx = instance_nearest(x,y,obj_emptyDesk).x;
dy = instance_nearest(x,y,obj_emptyDesk).y;
direction = point_direction(x, y, dx, dy)
// Set the rotation of student to match mouse
image_angle = point_direction(x, y, dx, dy) + -90
// Check if space bar is pressed
if (instance_exists(obj_emptyDesk)) {
	// Set sprite to kick
	//image_index = 1
	instance_create_layer(x+lengthdir_x(32,direction),y+lengthdir_y(32,direction),"Instances",obj_kick);
	obj_kick.owner = id
	obj_kick.image_angle = image_angle
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
}

// Check for if canGrab is true
if (canGrab == true) {
	
}


//swap between in desk and crawling
if inDesk {
	sprite_index = spr_studentPrototype;
} else if (!inDesk && buffer_time == 0)  {
	buffer_time = 1;
	sprite_index = spr_teacherPrototype;
} else {
	sprite_index = spr_teacherPrototype;
//instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
}


//decrement the buffer over time
if (buffer_time > 0) then buffer_time -= 1/room_speed;

//\/\/\/\/\/\/\/ Was causing the directional error \/\/\/\/\/\/\/\/\/\/

// Check if in range 
//if (point_distance(x, y, other.x, other.y) < 50) {
//	direction = point_direction(x,y,other.x, other.y)
//}


// /\/\/\/\/\/\/\

// ALL CODE BELOW IS FOR CLAMPING BORDERS
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)