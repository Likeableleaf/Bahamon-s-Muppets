/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_top);
draw_set_valign(fa_right);



draw_set_font(CountdownFont2);

draw_sprite_ext(spr_studentInDeskV1, 1, x+200, y+40, image_xscale, image_yscale, image_angle, imageColor, image_alpha);
draw_sprite(spr_studentInDeskV1,0, x+200,y+40);


draw_text_color(x, y+50, "Winner!", c_black,c_black,c_black,c_black,1);

draw_sprite_ext(spr_studentInDeskV1, 1, x+400, y+130, image_xscale, image_yscale, image_angle, imageColor1, image_alpha);
draw_sprite(spr_studentInDeskV1,0, x+400,y+130);

draw_text_color(x, y +150,"Most Kicks Made:", c_black,c_black,c_black,c_black,1);
draw_text_color(x+330, y +150,string(global.kicks), c_black,c_black,c_black,c_black,1);

draw_sprite_ext(spr_studentInDeskV1, 1, x+480, y+230, image_xscale, image_yscale, image_angle, imageColor2, image_alpha);
draw_sprite(spr_studentInDeskV1,0, x+480,y+230);

draw_text_color(x, y +250,"Most Hits Landed:", c_black,c_black,c_black,c_black,1);
draw_text_color(x+350, y +250,string(global.hits), c_black,c_black,c_black,c_black,1);

draw_sprite_ext(spr_studentInDeskV1, 1, x+630, y+350, image_xscale, image_yscale, image_angle, imageColor3, image_alpha);
draw_sprite(spr_studentInDeskV1,0, x+630,y+350);

draw_text_color(x, y +350,"Most Saves(got back in desk):", c_black,c_black,c_black,c_black,1);
draw_text_color(x+550, y +350,string(global.bailSaves), c_black,c_black,c_black,c_black,1);
