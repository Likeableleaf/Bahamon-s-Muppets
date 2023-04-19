// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buttonCreate(){

//arguments
var _x = argument[0];
var _y = argument[1];
var _width = argument[2];
var _height = argument[3];
var _text = argument[4];
var _script = argument[5];


//create the button
var _button = instance_create_layer(_x, _y, "Instances", obj_button);



//set the values of the button
with(_button){
    width = _width;
    height = _height;
    text = _text;
    script = _script;

}

return _button;
}