/// @description Insert description here
// You can write your code in this editor
global.menuOpen = true

if(global.menuOpen) {
audio_play_sound(BahamonsMuppets1Menu,1000,true)

} else if (global.menustartclosed) {
	audio_stop_all()
}

