/// @description Frame by frame programs

var keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A")); // pressed = 1
var keyRight = keyboard_check(vk_right) or keyboard_check(ord("D")); // pressed = 1
var keyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_space); // pressed = 1

var h_dir = keyRight - keyLeft;
// 0 - 1 = -1
// 1 - 0 = 1
// 1 - 1 = 0

// keyboard_check = true or false
// right means +
// left means -

// when something is true, in code: 1
// when something is false, in code: 0

var jump = keyUp;
var onTheFloor = place_meeting(x, y+1, obj_wall);

h_speed = h_dir * spd;
v_speed++; // "gravity" more like a downward force!

if(onTheFloor) {
	
	if(jump) {
		v_speed = -15;
	}
	
}


if(place_meeting(x+h_speed, y, obj_wall)) {
	
	h_speed = 0;
	
}

if(place_meeting(x, y+v_speed, obj_wall)) {
	
	v_speed = 0;
	
}

x += h_speed;
y += v_speed;

if(global.player_health <= 0) {
	game_end();
}