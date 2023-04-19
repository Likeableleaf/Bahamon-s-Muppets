/// @description Insert description here
// You can write your code in this editor
//create the UI
var _width = 300;
var _height = 100;

//create the play button
if(global.menustartclosed == false){
	scr_buttonCreate(100,300,_width, _height, "Play", scr_on_click_play);
}else{
	scr_buttonCreate(100,300,_width, _height, "Resume", scr_on_click_resume);
}

//create the credits button
if(global.menustartclosed == false){
	scr_buttonCreate(100, 300 + 40 + _height ,_width, _height, "Credits", scr_on_click_credit);
}else{
	scr_buttonCreate(100, 300 + 40 + _height ,_width, _height, "Restart", scr_on_click_replay);
}
//create the quit button
scr_buttonCreate(100, 300 + (_height + 40) * 2, _width, _height, "Quit", scr_on_click_quit);