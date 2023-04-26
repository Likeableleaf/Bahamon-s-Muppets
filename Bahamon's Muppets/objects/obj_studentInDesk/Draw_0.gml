/// @description Insert description here
// You can write your code in this editor
//draw player
if (inDesk) {
	//draw in desk
	draw_sprite_ext(spr_studentInDeskV1, 1, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
} else {
	//draw crawl state
	draw_sprite_ext(spr_studentCrawl, 1, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}
draw_self();