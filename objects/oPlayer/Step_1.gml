firingdelay = firingdelay - 1;

if (keyboard_check(vk_space) || gamepad_button_check(0,gp_face3)) && (firingdelay < 0) {
	firingdelay = 5;
	with (instance_create_layer(x,y, "Bullets", oBullet)) {
		x = oPlayer.x+33;
		speed = 25;
		direction = 90;
	}
		with (instance_create_layer(x,y, "Bullets", oBullet)) {
		x = oPlayer.x-34;
		speed = 25;
		direction = 90;
	}
}

