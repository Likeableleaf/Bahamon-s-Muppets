	if (instance_nearest(x,y,obj_simpleStudent).inDesk == true) {
		// Check if player is you
		if (instance_nearest(x,y,obj_simpleStudent).id != target && target != noone) {
			//change ai state
			// destroy kick
			instance_destroy()
			instance_nearest(x,y,obj_simpleStudent).inDesk = false;
			instance_nearest(x,y,obj_simpleStudent).speed = 6;
			instance_create_layer(x+30,y+30,"Instances", obj_emptyDesk)
		} else if (instance_nearest(x,y,obj_simpleStudent).id == target and target != noone) {
			instance_destroy()
			target.object_index.inDesk = false;
			instance_nearest(x,y,obj_simpleStudent).speed = 6;
			instance_create_layer(x+30,y+30,"Instances", obj_emptyDesk)
		}
} else {
	if(instance_nearest(x,y,obj_simpleStudent).id == target) and (target != noone){
		instance_destroy(target.object_index)
		instance_destroy()
	} else if (instance_nearest(x,y,obj_simpleStudent).id != target) and (target != noone) {
		instance_destroy(instance_nearest(x,y,obj_simpleStudent))
		instance_destroy()
	}
}
// Destroy throwable