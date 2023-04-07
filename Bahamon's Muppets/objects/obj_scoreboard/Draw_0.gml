/// @description Insert description here
// You can write your code in this editor
draw_set_font(CountdownFont)
draw_set_color(c_white)
if seconds < 10 {
    draw_text(8, 88, string(seconds));
} 
//else if minutes < 10 {
  //  draw_text(8, 88, "0" + string(minutes) + " : " + string(seconds));
//} else if seconds < 10 {
//    draw_text(8, 88, string(minutes) + " : 0" + string(seconds));
//} else {
//    draw_text(8, 88, string(minutes) + " : " + string(seconds));
//}