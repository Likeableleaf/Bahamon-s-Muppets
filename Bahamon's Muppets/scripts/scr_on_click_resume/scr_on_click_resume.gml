// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_on_click_resume(){
audio_play_sound(Door_opening, 10, false)
global.menuOpen = true;
global.menuOpen = !global.menuOpen;
}