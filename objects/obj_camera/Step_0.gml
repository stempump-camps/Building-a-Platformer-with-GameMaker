/// @description Insert description here
// You can write your code in this editor

x_camera = obj_player.x - w_camera/2;
y_camera = obj_player.y - h_camera/2;

camera_set_view_pos(view_camera[0], x_camera, y_camera);