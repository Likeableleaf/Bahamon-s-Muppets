/// @description Insert description here
// You can write your code in this editor
// Check to see if greenlight is false
while (greenlight == false) {
	// Check if simple AI is moving
	if (obj_simpleStudent.phy_position_x != obj_simpleStudent.phy_position_xprevious or obj_simpleStudent.phy_position_y != obj_simpleStudent.phy_position_yprevious) {
		// Create throwables
		instance_create_layer(x, y, "Instances", obj_throwable)
		// Set direction of throwables
		obj_throwable.direction = point_direction(x, y, obj_simpleStudent.x, obj_simpleStudent.y)
	} 
	// Check if player is moving
	if (obj_studentInDesk.phy_position_x != obj_studentInDesk.phy_position_xprevious or obj_studentInDesk.phy_position_y != obj_studentInDesk.phy_position_yprevious) {
		// Create throwables
		instance_create_layer(x, y, "Instances", obj_throwable)
		// Set direction of throwables
		obj_throwable.direction = point_direction(x, y, obj_studentInDesk.x, obj_studentInDesk.y)
	} 
	// Check if anyone is crawling
	if (obj_studentCrawling.phy_position_x != obj_studentCrawling.phy_position_xprevious or obj_studentCrawling.phy_position_y != obj_studentCrawling.phy_position_yprevious) {
		// Create throwables
		instance_create_layer(x, y, "Instances", obj_throwable)
		// Set direction of throwables
		obj_throwable.direction = point_direction(x, y, obj_studentCrawling.x, obj_studentCrawling.y)
	} 
}
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
	greenlight = false
}
// Check if greenlight is false
if(greenlight = false) {
	// Timer for redlight duration alarm
	alarm[0] = 30
}
