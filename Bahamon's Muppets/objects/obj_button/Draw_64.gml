/// @description Insert description here
// You can write your code in this editor

//create the color for button
draw_set_color(merge_color(c_maroon, c_white, hover));

//create the rectangle to be rounded
draw_roundrect(x,y,x + width, y + height, 0);

//draw out the text for the button
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//the actual text
draw_text(x + width/2, y + height/2, text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//reset the color
draw_set_color(c_white);