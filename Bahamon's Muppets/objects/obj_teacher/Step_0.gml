/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < array_length(numbAI); ++i;)
{
    if(not instance_exists(numbAI[i].object_index)) {
		array_delete(numbAI,i,1)
	}
}
if(greenlight == false) {
	for(i=0; i<array_length(numbAI); ++i;) {
		val = numbAI[i]
		ai = val.object_index
		if(ai.inDesk == false) {
			instance_destroy(ai)
		}
	}
if (canShoot == true) {
// Check to see if greenlight is false
	if (greenlight == false) {
		// facing class
		image_angle = 180;
		// Check if AI is moving
		if(instance_exists(obj_simpleStudent)){
			// Check if simple AI is moving
			if (obj_simpleStudent.speed != 0) {
				
				/*if(obj_simpleStudent.inDesk == false) {
					for (var i = 0; i < array_length(numbAI); ++i;) {
						ai = numbAI[i].object_index
						if(ai.inDesk == false) {
							instance_destroy(ai)
						}
					}
				}
				if(instance_exists(obj_simpleStudent)){
					/*/// Create throwables
					instance_create_layer(x, y, "Instances", obj_throwable)
					obj_throwable.target = instance_nearest(x, y, obj_simpleStudent).id
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
					obj_throwable.target = instance_nearest(x, y, obj_studentInDesk).id
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
					obj_throwable.target = instance_nearest(x, y, obj_Player).id
					// Set direction of throwables
					obj_throwable.direction = point_direction(x, y, obj_Player.x, obj_Player.y)
					canShoot = false
				}
			} 
		}
		
	}
}
if greenlight then image_angle=0;
b = 0
for(i=b; i<instance_number(obj_simpleStudent); ++i;) {
	instances = instance_find(obj_simpleStudent,i)
	b++;
}
for(i=b; i<instance_number(obj_Player); ++i;) {
	instances = instance_find(obj_Player,i)
	b++;
}
for(i=b; i<instance_number(obj_studentInDesk); ++i;) {
	instances = instance_find(obj_studentInDesk,i)
	b++;
}
if(array_length(instances) == 1) {
	global.winner = get_object_name(instances[0])
	instance_destroy(obj_teacher)
}

