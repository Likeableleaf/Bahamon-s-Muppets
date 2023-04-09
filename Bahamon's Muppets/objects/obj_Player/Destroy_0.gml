/// @description Insert description here
// You can write your code in this editor
// Once kicked off create crawling student
instance_create_layer(x+30,y+10,"Instances", obj_emptyDesk)
obj_controller.player[pad_num] = instance_create_layer(x-30,y-10,"Instances", obj_PlayerCrawling);
        with (obj_controller.player[pad_num])
            {
            image_index = instance_number(object_index);
            pad_num = pad_num;
            }
//instance_create_layer(x-30,y-10,"Instances", obj_PlayerCrawling)