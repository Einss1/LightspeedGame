//Horizontal collision
if (place_meeting(x+hsp,y, oWall)) {
	while (!place_meeting(x+sign(hsp),y,oWall)) {
		x = x + sign(hsp);
	}
	
	hsp = -hsp;
}

x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp, oWall)) {
	while (!place_meeting(x,y+sign(vsp),oWall)) {
		y = y + sign(vsp);
	}
	
	vsp = -vsp;
}

y = y + vsp;

//Animation
if (vsp == 0 || vsp < 0) && (firingdelay > 0) {
	sprite_index = sEnemy1;
	image_index = 0;
	image_speed = 0;
} 
if (vsp == 0 || vsp < 0) && (firingdelay == 0 || firingdelay <0) {
	sprite_index = sEnemy1;
	image_index = 1;
} 
if (vsp > 0) && (firingdelay > 0) {
	sprite_index = sEnemy1s;
	image_index = 0;
	image_speed = 0;
}

if (vsp > 0) && (firingdelay == 0 || firingdelay < 0) {
	sprite_index = sEnemy1s;
	image_index = 1;
}

