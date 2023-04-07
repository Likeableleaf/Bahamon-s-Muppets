/// @description Insert description here
// You can write your code in this editor
// Check to see if greenlight is false
while (greenlight == false) {
	// Check if AI is moving
	if(instance_exists(obj_simpleStudent)){
		// Check if simple AI is moving
		if (obj_simpleStudent.phy_position_x != obj_simpleStudent.phy_position_xprevious or obj_simpleStudent.phy_position_y != obj_simpleStudent.phy_position_yprevious) {
			// Create throwables
			instance_create_layer(x, y, "Instances", obj_throwable)
			// Set direction of throwables
			obj_throwable.direction = point_direction(x, y, obj_simpleStudent.x, obj_simpleStudent.y)
		} 
	}
	// Check if player in desk exists
	if(instance_exists(obj_studentInDesk)){
		// Check if player is moving
		if (obj_studentInDesk.phy_position_x != obj_studentInDesk.phy_position_xprevious or obj_studentInDesk.phy_position_y != obj_studentInDesk.phy_position_yprevious) {
			// Create throwables
			instance_create_layer(x, y, "Instances", obj_throwable)
			// Set direction of throwables
			obj_throwable.direction = point_direction(x, y, obj_studentInDesk.x, obj_studentInDesk.y)
		} 
	}
	// Check if studentCrawling exists
	if(instance_exists(obj_studentCrawling)){
		// Check if anyone is crawling
		if (obj_studentCrawling.phy_position_x != obj_studentCrawling.phy_position_xprevious or obj_studentCrawling.phy_position_y != obj_studentCrawling.phy_position_yprevious) {
			// Create throwables
			instance_create_layer(x, y, "Instances", obj_throwable)
			// Set direction of throwables
			obj_throwable.direction = point_direction(x, y, obj_studentCrawling.x, obj_studentCrawling.y)
		} 
	}
}

