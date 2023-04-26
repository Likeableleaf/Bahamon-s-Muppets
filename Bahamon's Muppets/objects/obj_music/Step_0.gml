

if((global.menuOpen == false) && (global.startMusic)){
	audio_stop_all();
	audio_play_sound(BahamonsMuppets1Gameplay,1000,true);
	global.startMusic = false;
}