//Get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));

if (key_left) || (key_right) || (key_down) || (key_up) {
	controller = 0;	
}

if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2 || abs(gamepad_axis_value(0,gp_axislv)) > 0.2) {
	key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	key_right = max(gamepad_axis_value(0,gp_axislh),0);
	key_down = max(gamepad_axis_value(0,gp_axislv),0);
	key_up = abs(min(gamepad_axis_value(0,gp_axislv),0));
	controller = 1;
}

//Calculate movement
var moveh = key_right - key_left;
var movev = key_down - key_up;

hsp = moveh * flysp;
vsp = movev * flysp;

//Horizontal collision
if (place_meeting(x+hsp,y, oWall)) {
	while (!place_meeting(x+sign(hsp),y,oWall)) {
		x = x + sign(hsp);
	}
	
	hsp = 0;
}

x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp, oWall)) {
	while (!place_meeting(x,y+sign(vsp),oWall)) {
		y = y + sign(vsp);
	}
	
	vsp = 0;
}

y = y + vsp;

//Animation
if (vsp == 0) {
	sprite_index = sPlayer;
} 
if (vsp < 0) {
	sprite_index = sPlayers;
}

//Collision with enemy
if ivulnerable > 0 {
    ivulnerable -= 1;
}

//Check health
if (hp <= 0) {
	game_restart();
};

if (round1_kills == 5) {
	inst1 = instance_create_layer(200,200,"Enemy",oEnemy1);
	inst2 = instance_create_layer(600,200,"Enemy",oEnemy1);
	with (inst1) {
		flash = 15;
		image_angle = 180;
	}
	with (inst2) {
		flash = 15;
		image_angle = 180;
	}
	round1_kills = 0;
}

if (round2_kills == 2) {
	inst1 = instance_create_layer(200,200,"Enemy",oEnemy2);
	
	with (inst1) {
		flash = 15;
		image_angle = 180;
	}
	round2_kills = 0;
}