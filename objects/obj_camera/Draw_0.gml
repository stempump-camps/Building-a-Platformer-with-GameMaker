/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(font_arial);

draw_text_color(x_camera+64, y_camera+32, string(global.player_score) + " points", c_white,c_white,c_white,c_white,1);

draw_text_color(x_camera+w_camera-64, y_camera+32, string(global.player_health) + " lives", c_white,c_white,c_white,c_white,1);