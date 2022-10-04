if (hp <= 0) {
	instance_destroy();	
	oPlayer.round1_kills++;
}

firingdelay = firingdelay - 1;

if ((distance_to_object(oPlayer) < 300 ) && (firingdelay < 0)) {
	firingdelay = 50;
	with (instance_create_layer(x,y, "Bullets", oEnemyBullet)) {
		x = self.x;
		y = self.y+27;
		speed = 7;
		direction = -90;
	}
}


