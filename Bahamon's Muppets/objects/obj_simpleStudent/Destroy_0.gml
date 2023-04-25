/// @description Insert description here
// You can write your code in this editor

// Once kicked off create crawling student
//instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
//instance_create_layer(x-30,y-10,"Instances", obj_AICrawling)
for (var i = 0; i < instance_number(obj_emptyDesk); ++i;)
{
    empty[i] = instance_find(obj_emptyDesk,i);
}
if(array_length(empty) < array_length(numbPlayers)) {
	instance_create_layer(x,y,"Instances", obj_emptyDesk)
}