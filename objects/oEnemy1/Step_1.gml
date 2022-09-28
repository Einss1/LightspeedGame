if (hp <= 0) {
	instance_destroy();	
}

firingdelay = firingdelay - 1;

if ((distance_to_object(oPlayer) < 250 ) && (firingdelay < 0)) {
	firingdelay = 125;
	with (instance_create_layer(x,y, "Bullets", oEnemyBullet1)) {
		x = self.x;
		y = self.y+20;
		speed = 5;
		direction = -90;
	}
}


