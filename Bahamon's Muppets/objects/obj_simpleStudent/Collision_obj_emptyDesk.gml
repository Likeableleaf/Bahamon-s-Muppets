/// @description Insert description here
// You can write your code in this editor
if (!inDesk && buffer_time == 0) {
inDesk = true
instance_destroy(instance_nearest(x,y,obj_emptyDesk));
}