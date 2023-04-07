/// @description Insert description here
// You can write your code in this editor
// Set font
draw_set_font(CountdownFont)
// Set color
draw_set_color(c_white)
if(showTime <= 7) {
	// Draw countdown timer
	draw_text(x+20, y+20, string(showTime))
}