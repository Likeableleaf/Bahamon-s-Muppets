// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_on_click_credit(){
layer_create(-5,"Credits");
instance_create_layer(200,100, "Credits", obj_credits);
instance_create_layer(700,1500, "Credits", obj_creditsButton);
}