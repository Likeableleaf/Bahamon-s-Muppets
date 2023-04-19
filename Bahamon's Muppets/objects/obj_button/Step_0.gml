/// @description Insert description here
// You can write your code in this editor
//check if the mouse is over button
var _hover = scr_get_hover(); //if hover should happen or not
var _click = _hover && mouse_check_button_pressed(mb_left); // check if mouse clicked

hover = lerp(hover, _hover, 0.1); //give value to hover

//if the click has been executed:
if(_click && script >=0){
	script_execute(script);
}