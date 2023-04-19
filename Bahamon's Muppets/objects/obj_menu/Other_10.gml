/// @description Insert description here
// You can write your code in this editor
//create the UI
var _width = 300;
var _height = 100;

//create the play button
if(global.menustartclosed == false){
	buttonCreate(100,300,_width, _height, "Play", on_click_play);
}else{
	buttonCreate(100,300,_width, _height, "Resume", on_click_resume);
}

//create the credits button
if(global.menustartclosed == false){
	buttonCreate(100, 300 + 40 + _height ,_width, _height, "Credits", on_click_credit);
}else{
	buttonCreate(100, 300 + 40 + _height ,_width, _height, "Restart", on_click_replay);
}
//create the quit button
buttonCreate(100, 300 + (_height + 40) * 2, _width, _height, "Quit", on_click_quit);