/// @description Insert description here
// You can write your code in this editor
// Check if there is still time
if(seconds > 0) {
	// Decrease time
	seconds -= 1/room_speed
} else { 
	// Set time to 0
	seconds=0
	// Set greenlight to false or true
	if obj_teacher.greenlight == false{
		obj_teacher.greenlight = true;
	}	else if obj_teacher.greenlight == true {
		obj_teacher.greenlight = false;
	}
	// timer reset
	if(obj_teacher.greenlight = false) {
	// Timer for redlight duration alarm
	seconds = 10;
	} else {
	seconds = irandom_range(60,300)
	}
}

if(global.started && !global.menustartclosed){
global.menustartclosed = true;
global.menuOpen = !global.menuOpen;
}


