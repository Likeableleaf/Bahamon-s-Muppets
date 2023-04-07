/// @description Insert description here
// You can write your code in this editor
// Check if there is still time
if(time > 0) {
	// Decrease time
	time = time - delta_time/1000000
} else { 
	// Set time to 0
	time=0
	// Set showTime = to an integer of time
	showTime = ceil(time)
	// Set greenlight to false
	obj_teacher.greenlight = false
}
// Check if greenlight is false
if(obj_teacher.greenlight = false) {
	// Timer for redlight duration alarm
	alarm[0] = 30
}