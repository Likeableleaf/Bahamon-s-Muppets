/// @description Insert description here
// You can write your code in this editor
if (!inDesk && !freeze) {
inDesk = true
bailSavesMade = bailSavesMade +1;
//image_angle += 180;
instance_destroy(instance_nearest(x,y,obj_emptyDesk));
speed = 0;
 /*else if (inDesk) {
	instance_nearest(x,y,obj_emptyDesk).direction = point_direction(x, y, instance_nearest(x,y,obj_emptyDesk).x, instance_nearest(x,y,obj_emptyDesk).y)
	instance_nearest(x,y,obj_emptyDesk).speed = 2;
}*/

//Remove the current fixture
physics_remove_fixture(id, Crawl_fix);

// Configure the fixture
fix = physics_fixture_create();
physics_fixture_set_box_shape(fix, 38, 38);
physics_fixture_set_density(fix, .5);
physics_fixture_set_restitution(fix, 0.1);
physics_fixture_set_collision_group(fix, 1)
physics_fixture_set_linear_damping(fix, 0.9);
physics_fixture_set_angular_damping(fix, 0.9);
physics_fixture_set_friction(fix, 0.2);

//Bind the fixture
Desk_fix = physics_fixture_bind_ext(fix, id, 3, -14);
			
// Delete fixture
physics_fixture_delete(fix)
}