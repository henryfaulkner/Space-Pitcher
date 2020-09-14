var isConnected; // boolean; Checks if ball is connected to pitcher

if (y < 608) {
	gravity = 0.03;
	isConnected = false;
} else {
	vspeed = 0;
	isConnected = true;
	if keyboard_check_pressed(vk_space) {
		vspeed = -5;
	}
}

if (isConnected == true) {
	if keyboard_check(vk_right) {
		hspeed = 3;	
	} else if keyboard_check(vk_left) {
		hspeed = -3;	
	} else {
		hspeed = 0;	
	}
}