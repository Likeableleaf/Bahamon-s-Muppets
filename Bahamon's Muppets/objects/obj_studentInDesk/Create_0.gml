
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