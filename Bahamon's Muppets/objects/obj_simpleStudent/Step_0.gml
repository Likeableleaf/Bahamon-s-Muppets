/// @description Insert description here
// Have AI image track player
image_angle = point_direction(x, y, obj_studentInDesk.x, obj_studentInDesk.y) + -90

if (canKick == true) {
	// Set sprite to kick
	image_index = 1
	// Generate direction towards other students
	newdirection = point_direction(x, y, obj_studentInDesk.x, obj_studentInDesk.y) //+ irandom_range(-20,20)
	// Set direction to the generated direction
	direction = newdirection
	// Set speed
	speed = -4
	// Set canKick to false
	canKick = false
	// Reset alarm
	alarm[1] = 90
} else {
	if(speed != 0) {
	// Slow down student
	speed += 0.2
	}
	// Set sprite to regular
	image_index = 0
}

// Check if in range 
if (point_distance(x, y, other.x, other.y) < 50) {
	direction = point_direction(x,y,other.x, other.y)
}

// ALL CODE BELOW IS FOR CLAMPING BORDERS
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)