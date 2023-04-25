/// @description Insert description here
// You can write your code in this editor
if (canShoot == true) {
// Check to see if greenlight is false
	if (greenlight == false) {
		// facing class
		image_angle = 180;
		// Check if AI is moving
		if(instance_exists(obj_simpleStudent)){
			// Check if simple AI is moving
			if (obj_simpleStudent.speed != 0) {
				if(obj_simpleStudent.inDesk == false) {
					instance_destroy(obj_simpleStudent)
				}
				if(instance_exists(obj_simpleStudent)){
					// Create throwables
					instance_create_layer(x, y, "Instances", obj_throwable)
					// Set direction of throwables
					obj_throwable.direction = point_direction(x, y, obj_simpleStudent.x, obj_simpleStudent.y)
					canShoot = false
				}
			} 
		}
		// Check if player in desk exists
		if(instance_exists(obj_studentInDesk)){
			// Check if player is moving
			if (obj_studentInDesk.speed != 0) {
				if(obj_studentInDesk.inDesk == false) {
					instance_destroy(obj_studentInDesk)
				}
				if(instance_exists(obj_studentInDesk)) {
					// Create throwables
					instance_create_layer(x, y, "Instances", obj_throwable)
					// Set direction of throwables
					obj_throwable.direction = point_direction(x, y, obj_studentInDesk.x, obj_studentInDesk.y)
					canShoot = false
				}
			} 
		}
		// Check if studentCrawling exists
		if(instance_exists(obj_Player)){
			// Check if anyone is crawling
			if (obj_Player.speed != 0) {
				if(obj_Player.inDesk == false) {
					instance_destroy(obj_Player)
				}
				if(instance_exists(obj_Player)){
					// Create throwables
					instance_create_layer(x, y, "Instances", obj_throwable)
					// Set direction of throwables
					obj_throwable.direction = point_direction(x, y, obj_Player.x, obj_Player.y)
					canShoot = false
				}
			} 
		}
		
	}
}
if greenlight then image_angle=0;

