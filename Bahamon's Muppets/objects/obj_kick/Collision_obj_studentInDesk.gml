/// @description Insert description here
// You can write your code in this editor

//check if player is in Desk
if instance_nearest(x,y,obj_studentInDesk).inDesk == true {
	
	//check that 
	if (buffer_time == 0) {
		
		// Check if player is you
		if (instance_nearest(x,y,obj_studentInDesk).id != owner && owner != noone) {
			
			// Change ai state
			instance_nearest(x,y,obj_studentInDesk).inDesk = false;

			// Configure the fixture
			new_fix = physics_fixture_create();
			physics_fixture_set_box_shape(new_fix,  28, 21);
			physics_fixture_set_density(new_fix, .5);
			physics_fixture_set_restitution(new_fix, 0.1);
			physics_fixture_set_collision_group(new_fix, 1)
			physics_fixture_set_linear_damping(new_fix, 0.9);
			physics_fixture_set_angular_damping(new_fix, 0.9);
			physics_fixture_set_friction(new_fix, 0.2);

			// Bind the fixture
			instance_nearest(x,y,obj_studentInDesk).Crawl_fix = physics_fixture_bind(new_fix, instance_nearest(x,y,obj_studentInDesk).id);
			
			//Remove the current fixture
			physics_remove_fixture(instance_nearest(x,y,obj_studentInDesk).id, instance_nearest(x,y,obj_studentInDesk).Desk_fix);
			
			// Delete fixture
			physics_fixture_delete(new_fix)
			
			// Boot player
			instance_nearest(x,y,obj_studentInDesk).freeze = true;
			instance_nearest(x,y,obj_studentInDesk).buffer_time = 3;
			other.dire = point_direction(x, y, instance_nearest(x,y,obj_studentInDesk).x, instance_nearest(x,y,obj_studentInDesk).y);
			with (other) {
				physics_apply_impulse(x, y, lengthdir_x(750, dire), lengthdir_y(750, dire));
			}
			
			// Play sfx
			if (canPlay) {
				audio_play_sound(Empty_kick2, 10, false)
				canPlay = true
			}
			
			//alarm[1] = 5
			//obj_simpleStudent.x += 20
			//obj_simpleStudent.y += 20
			
			//generate emptyDesk
			instance_create_layer(x+10,y+10,"Instances", obj_emptyDesk)
			owner.object_index.hitsMade = owner.object_index.hitsMade + 1;
			
			// destroy kick
			instance_destroy(obj_kick)
		}
	}
}