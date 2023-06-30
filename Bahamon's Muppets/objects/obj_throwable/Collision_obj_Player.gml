/// @description Insert description here
// You can write your code in this editor
if instance_nearest(x,y,obj_Player).inDesk == true {
	
		//change ai state
		instance_nearest(x,y,obj_Player).inDesk = false;
		
		// boot player
			instance_nearest(x,y,obj_Player).freeze = true;
			instance_nearest(x,y,obj_Player).direction = point_direction(x, y, instance_nearest(x,y,obj_Player).x, instance_nearest(x,y,obj_Player).y);
			instance_nearest(x,y,obj_Player).speed = 2;
			audio_play_sound(Thowing_object_nohit, 10, false)
			//obj_simpleStudent.x += 20
		//obj_simpleStudent.y += 20
		
		//generate emptyDesk
		instance_create_layer(x+10,y+10,"Instances", obj_emptyDesk)
		
		// destroy kick
		instance_destroy()
		
} else {
	instance_destroy(instance_nearest(x,y,obj_Player))
}