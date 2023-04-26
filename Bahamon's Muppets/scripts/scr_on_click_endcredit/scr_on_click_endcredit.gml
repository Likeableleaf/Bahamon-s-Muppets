// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_on_click_endcredit(){
	//instance_destroy(obj_credits);
	//instance_destroy(obj_creditsButton);
	audio_play_sound(Door_opening_test2, 10, false)
	layer_destroy("Credits");
}