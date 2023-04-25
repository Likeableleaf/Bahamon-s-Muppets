/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_teacher)){
	if (seconds < 10) and (obj_teacher.greenlight == true) {
		draw_set_color(c_green)
	    draw_text(obj_teacher.x+40, obj_teacher.y, string(seconds));
	} else if (seconds < 10) and (obj_teacher.greenlight == false) {
		draw_set_color(c_red)
		draw_text(obj_teacher.x+40, obj_teacher.y, string(seconds));
	}
	//else if minutes < 10 {
	  //  draw_text(8, 88, "0" + string(minutes) + " : " + string(seconds));
	//} else if seconds < 10 {
	//    draw_text(8, 88, string(minutes) + " : 0" + string(seconds));
	//} else {
	//    draw_text(8, 88, string(minutes) + " : " + string(seconds));
	//}'
	draw_set_font(CountdownFont)
	draw_set_color(c_white)
	//timer display settings (to keep same # of digits throughout operation) 
	if totalseconds < 10 and totalminutes < 10{
		draw_text(8, 88, "0" + string(totalminutes) + " : 0" + string(totalseconds));
	} else if totalminutes < 10 {
		draw_text(8, 88, "0" + string(totalminutes) + " : " + string(totalseconds));
	} else if totalseconds < 10 {
		draw_text(8, 88, string(totalminutes) + " : 0" + string(totalseconds));
	} else {
		draw_text(8, 88, string(totalminutes) + " : " + string(totalseconds));
	}
	if (obj_teacher.greenlight == false) {
		draw_circle_colour(obj_teacher.x+800, obj_teacher.y+20, 40, c_red, c_red, false);
	} else {
		draw_circle_colour(obj_teacher.x+800, obj_teacher.y+20, 40, c_green, c_green, false);
	}
}