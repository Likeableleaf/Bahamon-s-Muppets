/*	if (instance_nearest(x,y,obj_simpleStudent).inDesk == true) {
		// Check if player is you
		if (instance_nearest(x,y,obj_simpleStudent).id != target && target != noone) {
			//change ai state
			// destroy kick
			instance_destroy()
			instance_nearest(x,y,obj_simpleStudent).inDesk = false;
			// boot player
			instance_nearest(x,y,obj_simpleStudent).freeze = true;
			instance_nearest(x,y,obj_simpleStudent).direction = point_direction(x, y, instance_nearest(x,y,obj_simpleStudent).x, instance_nearest(x,y,obj_simpleStudent).y);
			instance_nearest(x,y,obj_simpleStudent).speed = 2;
			audio_play_sound(Thowing_object_nohit, 10, false)
			instance_create_layer(x+30,y+30,"Instances", obj_emptyDesk)
		} else if (instance_nearest(x,y,obj_simpleStudent).id == target and target != noone) {
			instance_destroy()
			target.object_index.inDesk = false;
			// boot player
			instance_nearest(x,y,obj_simpleStudent).freeze = true;
			instance_nearest(x,y,obj_simpleStudent).direction = point_direction(x, y, instance_nearest(x,y,obj_simpleStudent).x, instance_nearest(x,y,obj_simpleStudent).y);
			instance_nearest(x,y,obj_simpleStudent).speed = 2;
			audio_play_sound(Thowing_object_nohit, 10, false)
			instance_create_layer(x+30,y+30,"Instances", obj_emptyDesk)
		}
} else {
	if(instance_nearest(x,y,obj_simpleStudent).id == target) and (target != noone){
		instance_destroy(target.object_index)
		audio_play_sound(Thowing_object_nohit, 10, false)
		instance_destroy()
	} else if (instance_nearest(x,y,obj_simpleStudent).id != target) and (target != noone) {
		instance_destroy(instance_nearest(x,y,obj_simpleStudent))
		audio_play_sound(Thowing_object_nohit, 10, false)
		instance_destroy()
	}
}//*/
// Destroy throwable
if instance_nearest(x,y,obj_simpleStudent).inDesk == true {
	// Check if player is you
		//change ai state
		instance_nearest(x,y,obj_simpleStudent).inDesk = false;
		// boot player
			instance_nearest(x,y,obj_simpleStudent).freeze = true;
			instance_nearest(x,y,obj_simpleStudent).direction = point_direction(x, y, instance_nearest(x,y,obj_simpleStudent).x, instance_nearest(x,y,obj_simpleStudent).y);
			instance_nearest(x,y,obj_simpleStudent).speed = 2;
			audio_play_sound(Thowing_object_nohit, 10, false)
			//obj_simpleStudent.x += 20
		//obj_simpleStudent.y += 20
		//generate emptyDesk
		instance_create_layer(x+10,y+10,"Instances", obj_simpleStudent)
		// destroy kick
		instance_destroy()
} else {
	instance_destroy(instance_nearest(x,y,obj_simpleStudent))
}