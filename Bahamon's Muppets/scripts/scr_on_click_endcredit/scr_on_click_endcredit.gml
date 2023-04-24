// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_on_click_endcredit(){
	instance_destroy(obj_credits);
	//instance_destroy(global.creditsButtonId);
	layer_destroy_instances("Credits");
}