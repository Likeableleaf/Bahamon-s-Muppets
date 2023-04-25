/// @description Insert description here
for (var i = 0; i < instance_number(obj_simpleStudent); ++i;)
	{
    ais[i] = instance_find(obj_simpleStudent,i);
	}
maxVal = array_length(ais)
//randomai = random_range(0, maxVal)
//chosenaiID = ais[randomai]

if (inDesk) {
	if (canKick == true && (instance_exists(obj_studentInDesk)) and instance_exists(obj_Player) and (point_direction(x, y, obj_studentInDesk.x, obj_studentInDesk.y) < point_direction(x, y, obj_Player.x, obj_Player.y))) {
		if(obj_teacher.greenlight == true) {
		// Set sprite to kick
		//image_index = 1
		// Generate direction towards other students
		var px, py
		px = instance_nearest(x,y,obj_studentInDesk).x;
		py = instance_nearest(x,y,obj_studentInDesk).y;
		// checks if player is in range
		if (distance_to_object(instance_nearest(x,y,obj_studentInDesk)) <= 5) {
		//points to kick player
		direction = point_direction(x, y, px, py) + 180	
		image_angle = point_direction(x, y, px, py) + -90;
		instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
		obj_kick.owner = id
		obj_kick.image_angle = image_angle
		} else {
			image_angle = point_direction(x, y, px, py) + -270;
			direction = point_direction(x, y, px, py) //+ irandom_range(-20,20)
			// Set direction to the generated direction
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			instance_nearest(x, y, obj_kick).owner = id
			instance_nearest(x, y, obj_kick).image_angle = image_angle //*/
		}
		// Set speed
		speed = 4
		// Set canKick to false
		canKick = false
		// Reset alarm
		alarm[1] = 60
	}
} else if (canKick == true && (instance_exists(obj_studentInDesk)) and not instance_exists(obj_Player)) {
	// Set sprite to kick
	//image_index = 1
	if(obj_teacher.greenlight == true) {
		// Generate direction towards other students
		var px, py
		px = instance_nearest(x,y,obj_studentInDesk).x;
		py = instance_nearest(x,y,obj_studentInDesk).y;
		// checks if player is in range
		if (distance_to_object(instance_nearest(x,y,obj_studentInDesk)) <= 5) {
			//points to kick player
			direction = point_direction(x, y, px, py) + 180	
			image_angle = point_direction(x, y, px, py) + -90;
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			obj_kick.owner = id
			obj_kick.image_angle = image_angle
		} else {
			image_angle = point_direction(x, y, px, py) + -270;
			direction = point_direction(x, y, px, py) //+ irandom_range(-20,20)
			// Set direction to the generated direction
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			instance_nearest(x, y, obj_kick).owner = id
			instance_nearest(x, y, obj_kick).image_angle = image_angle //*/
		}
		// Set speed
		speed = 4
		// Set canKick to false
		canKick = false
		// Reset alarm
		alarm[1] = 60
	}
} else if (canKick == true and instance_exists(obj_simpleStudent) and not instance_exists(obj_studentInDesk) and not instance_exists(obj_Player)) {
	// Set sprite to kick
	//image_index = 1
	if(obj_teacher.greenlight == true) {
		// Generate direction towards other students
		var px, py
		for (var i = 0; i < maxVal; ++i;)
		{
			if(instance_exists(ais[i])){
				if(instance_nearest(x,y,obj_simpleStudent).id == ais[i]) {
					chosenID = ais[i]
				
				}
			}
		}
	}
		ai = chosenID.object_index
		px = ai.x		
		py = ai.y
		//}
		//px = instance_nearest(x,y,obj_simpleStudent).x;
		//py = instance_nearest(x,y,obj_simpleStudent).y;
		// checks if player is in range
		if (distance_to_object(ai) <= 5) {
			//points to kick player
			direction = point_direction(x, y, px, py) + 180	
			image_angle = point_direction(x, y, px, py) + -90;
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			obj_kick.owner = id
			obj_kick.image_angle = image_angle
		} else {
			image_angle = point_direction(x, y, px, py) + -270;
			direction = point_direction(x, y, px, py) //+ irandom_range(-20,20)
			// Set direction to the generated direction
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			instance_nearest(x, y, obj_kick).owner = id
			instance_nearest(x, y, obj_kick).image_angle = image_angle //*/
		}
		// Set speed
		speed = 4
		// Set canKick to false
		canKick = false
		// Reset alarm
		alarm[1] = 60
	}
} else if (canKick == true && (instance_exists(obj_studentInDesk)) and instance_exists(obj_Player) and (point_direction(x, y, obj_studentInDesk.x, obj_studentInDesk.y) > point_direction(x, y, obj_Player.x, obj_Player.y))) {
	// Set sprite to kick
	//image_index = 1
	if(obj_teacher.greenlight == true) {
		// Generate direction towards other students
		var px, py
		px = instance_nearest(x,y,obj_Player).x;
		py = instance_nearest(x,y,obj_Player).y;
		// checks if player is in range
		if (distance_to_object(instance_nearest(x,y,obj_Player)) <= 5) {
			//points to kick player
			direction = point_direction(x, y, px, py) + 180	
			image_angle = point_direction(x, y, px, py) + -90;
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			obj_kick.owner = id
			obj_kick.image_angle = image_angle
		} else {
			image_angle = point_direction(x, y, px, py) + -270;
			direction = point_direction(x, y, px, py) //+ irandom_range(-20,20)
			// Set direction to the generated direction
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			instance_nearest(x, y, obj_kick).owner = id
			instance_nearest(x, y, obj_kick).image_angle = image_angle //*/
		}
		// Set speed
		speed = 4
		// Set canKick to false
		canKick = false
		// Reset alarm
		alarm[1] = 60
	}
} else if (canKick == true && (not instance_exists(obj_studentInDesk)) and instance_exists(obj_Player)) {
	// Set sprite to kick
	//image_index = 1
	if(obj_teacher.greenlight == true) {
		// Generate direction towards other students
		var px, py
		px = instance_nearest(x,y,obj_Player).x;
		py = instance_nearest(x,y,obj_Player).y;
		// checks if player is in range
		if (distance_to_object(instance_nearest(x,y,obj_Player)) <= 5) {
			//points to kick player
			direction = point_direction(x, y, px, py) + 180	
			image_angle = point_direction(x, y, px, py) + -90;
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			obj_kick.owner = id
			obj_kick.image_angle = image_angle
		} else {
			image_angle = point_direction(x, y, px, py) + -270;
			direction = point_direction(x, y, px, py) //+ irandom_range(-20,20)
			// Set direction to the generated direction
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			instance_nearest(x, y, obj_kick).owner = id
			instance_nearest(x, y, obj_kick).image_angle = image_angle //*/
		}
		// Set speed
		speed = 4
		// Set canKick to false
		canKick = false
		// Reset alarm
		alarm[1] = 60
	}
} 	if(vspeed != 0) {
	// Slow down student
	speed -= 0.2
	}
	// Set sprite to regular
	image_index = 0
if(obj_teacher.greenlight == true) || (obj_teacher.greenlight == false) {
	if(obj_simpleStudent.inDesk == false) {
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
			// Set speed
			speed = 1
			//instance_create_layer(x+lengthdir_x(32,direction),y+lengthdir_y(32,direction),"Instances",obj_kick);
			//obj_kick.owner = id
			//obj_kick.image_angle = image_angle
		
	}
}
}

	if(speed != 0) {
	// Slow down student
	speed -= 0.2
	}
	// Set sprite to regular
	image_index = 0



// Check for if canGrab is true
if (canGrab == true) {
	
}


//swap between in desk and crawling
if inDesk {
	sprite_index = spr_studentInDeskV1;
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