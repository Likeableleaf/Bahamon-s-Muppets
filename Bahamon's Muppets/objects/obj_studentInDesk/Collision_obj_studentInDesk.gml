/// @description Insert description here
// You can write your code in this editor
// Create crawling student if kicked out desk
instance_create_layer(x, y, "Instances", obj_studentCrawling)
// Destroy player student 
instance_destroy(obj_studentInDesk)