/// @description Insert description here
// You can write your code in this editor
//create the UI
var _width = 300;
var _height = 100;
//create the credits button
scr_buttonCreateCredits(400, 740 + 40 + _height ,_width+820, _height + 20, "Back", scr_on_click_endcredit);
global.creditsOpened = false;