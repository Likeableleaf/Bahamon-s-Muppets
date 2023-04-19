/// @description Insert description here
// You can write your code in this editor
if (not instance_exists(obj_cloudMaker) and global.menustartclosed == true) {
	draw_set_halign(fa_top)
	draw_set_valign(fa_right)
	draw_set_font(fontLarge)
	if obj_scoreboard.totalseconds < 10 and obj_scoreboard.totalminutes < 10 {
		finalTime = ("0" + string(obj_scoreboard.totalminutes) + " : 0" + string(obj_scoreboard.totalseconds))
	} else if obj_scoreboard.totalminutes < 10 {
		finalTime = ("0" + string(obj_scoreboard.totalminutes) + " : " + string(obj_scoreboard.totalseconds))
	} else if obj_scoreboard.totalseconds < 10 {
		finalTime = (string(obj_scoreboard.totalminutes) + " : 0" + string(obj_scoreboard.totalseconds))
	} else {
		finalTime = (string(obj_scoreboard.totalminutes) + " : " + string(obj_scoreboard.totalseconds))
	}
	draw_text_color(x, y, string(finalTime), c_purple, c_fuchsia, c_white, c_blue, 1)
}
