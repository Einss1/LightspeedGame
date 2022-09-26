if (hp <= 0) {
	instance_destroy();	
}

firingdelay = firingdelay - 1;

if ((distance_to_object(oPlayer) < 300 ) && (firingdelay < 0)) {
	firingdelay = 30;
	with (instance_create_layer(x,y, "Bullets", oEnemyBullet)) {
		x = self.x;
		y = self.y+27;
		speed = 7;
		direction = -90;
	}
}


