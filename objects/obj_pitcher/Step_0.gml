x = clamp(x, view_xview[0] - 30, view_xview[0] + 700);

if keyboard_check(vk_right) {
	hspeed = 3;	
} else if keyboard_check(vk_left) {
	hspeed = -3;	
} else {
	hspeed = 0;	
}