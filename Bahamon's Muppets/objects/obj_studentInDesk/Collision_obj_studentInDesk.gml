/// @description Insert description here
// You can write your code in this editor
// check if kicking
if (image_index == 1) {
	// Create crawling student AI if kicked out desk
	instance_create_layer(x, y, "Instances", obj_studentCrawling)
	// Destroy simple student 
	instance_destroy(obj_simpleStudent)
}