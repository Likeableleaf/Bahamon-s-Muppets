
//creating the desk and student object.

image_index = 0

buffer_time = 0;
inDesk = true;
freeze = false;

kicksMade = 0;
bailSavesMade = 0;
hitsMade = 0;
playerNum = 0;

temp = 0
for (var i = 0; i < instance_number(obj_Player); ++i;)
{
    numbPlayers[i] = instance_find(obj_Player,i);
	temp ++;
}
for (var i = temp; i < instance_number(obj_simpleStudent); ++i;)
{
    numbPlayers[i] = instance_find(obj_simpleStudent,i);
	temp ++;
}
for (var i = temp; i < instance_number(obj_studentInDesk); ++i;)
{
    numbPlayers[i] = instance_find(obj_studentInDesk,i);
	temp ++;
}

// Configure the fixture
fix = physics_fixture_create();
physics_fixture_set_box_shape(fix,  sprite_width/2, sprite_height/2);
physics_fixture_set_density(fix, .5);
physics_fixture_set_restitution(fix, 0.1);
physics_fixture_set_linear_damping(fix, 0.9);
physics_fixture_set_angular_damping(fix, 0.9);
physics_fixture_set_friction(fix, 0.1);

//Bind the fixture
Desk_fix = physics_fixture_bind(fix, id);
			
// Delete fixture
physics_fixture_delete(fix)