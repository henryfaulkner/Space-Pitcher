x = clamp(x, view_xview[0], view_xview[0] + 730); // Constrains ball x-value to inside screen

if (y < 608) {
	gravity = 0.035;
	isConnected = false;
}

if (y > 650) {
	//numBalls = numBalls - 1;
	instance_destroy();
	var inst = instance_create_layer(obj_pitcher.x + 32, 608, "Instances", obj_baseball);
	inst.image_xscale = inst.image_xscale * 2.066;
	inst.image_yscale = inst.image_yscale * 2.066;
}

if (isConnected == true) {
	if keyboard_check(vk_right) {
		hspeed = 3;	
	} else if keyboard_check(vk_left) {
		hspeed = -3;	
	} else {
		hspeed = 0;	
	}
	
	vspeed = 0;
	gravity = 0;
	if keyboard_check_pressed(vk_space) {
		vspeed = -5;
	} 
}

if(y < 608) {
	if keyboard_check_released(vk_space) {
		vspeed = 4;	
	}
}