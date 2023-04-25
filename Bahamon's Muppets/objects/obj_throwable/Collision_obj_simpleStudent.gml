/// @description Insert description here
// You can write your code in this editor
// Leave behind empty desk at student
//instance_create_layer(obj_simpleStudent.x,obj_simpleStudent.y,"Instances",obj_emptyDesk)
// Destroy the student
/*for (var i = 0; i < array_length(obj_teacher.numbAI); ++i;) {
	if(obj_simpleStudent.id == obj_teacher.numbAI[i]) {
		aiID = obj_teacher.numbAI[i]
		ai = aiID.object_index
			if(ai.inDesk == true) {
				ai.inDesk = false
				instance_create_layer(x+20,y+20,"Instances", obj_emptyDesk)
				instance_destroy(obj_throwable)
			}
			if(ai.inDesk == false) {
				instance_destroy(ai)
				instance_destroy(obj_throwable)
			}
		}
}
*/

	if (obj_simpleStudent.inDesk == true) {
	// Check if player is you
		//change ai state
		obj_simpleStudent.inDesk = false;
		// boot player
		//instance_nearest(x,y,obj_simpleStudent).direction = point_direction(x, y, instance_nearest(x,y,obj_simpleStudent).x, instance_nearest(x,y,obj_simpleStudent).y)
		//instance_nearest(x,y,obj_simpleStudent).speed = 2;
		//obj_simpleStudent.x += 20
		//obj_simpleStudent.y += 20
		//generate emptyDesk
		instance_create_layer(x+15,y+15,"Instances", obj_emptyDesk)
		// destroy kick
		instance_destroy(obj_throwable)
} else {
	/*for (var i = 0; i < array_length(obj_teacher.numbAI); ++i;) {
		aiID = obj_teacher.numbAI[i]
			if(aiID == obj_simpleStudent.id) {
				ai = aiID.object_index
				instance_destroy(ai)
		}
	}	
	*/
	instance_destroy(instance_nearest(x,y,obj_simpleStudent))
	instance_destroy(obj_throwable)
}
// Destroy throwable