/// @description Insert description here
// You can write your code in this editor
//create the UI
var _width = 300;
var _height = 100;
//create the credits button
room_goto_next();

instance_destroy(obj_button);

//create the restart button
scr_buttonCreate(100, 300 + (_height + 40) * 2, _width, _height, "Restart", scr_on_click_replay);