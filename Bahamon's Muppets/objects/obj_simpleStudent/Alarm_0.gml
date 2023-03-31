/// @description Insert description here
// You can write your code in this editor
// Generate direction towards other students
newdirection = -point_direction(x,y,other.x, other.y) + irandom_range(-20,20)
// Set direction to the generated direction
direction = newdirection
// Reset alarm to update direction randomly times
alarm[0] = irandom_range(60,150)

// Check if in range 
if (point_distance(x, y, other.x, other.y) < 50) {
	direction = -point_direction(x,y,other.x, other.y)
	
}