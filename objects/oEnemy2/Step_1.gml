if (hp <= 0) {
	instance_destroy();	
	oPlayer.global_kills++;
}

firingdelay = firingdelay - 1;

if ((distance_to_object(oPlayer) < 300 ) && (firingdelay < 0)) {
	firingdelay = 40;
	with (instance_create_layer(x,y, "Bullets", oEnemyBullet)) {
		x = self.x+25;
		y = self.y+27;
		speed = 7;
		direction = -90;
	}
		with (instance_create_layer(x,y, "Bullets", oEnemyBullet)) {
		x = self.x+37;
		y = self.y+13;
		speed = 7;
		direction = -90;
	}
		with (instance_create_layer(x,y, "Bullets", oEnemyBullet)) {
		x = self.x+50;
		y = self.y+3;
		speed = 7;
		direction = -90;
	}
		with (instance_create_layer(x,y, "Bullets", oEnemyBullet)) {
		x = self.x-25;
		y = self.y+27;
		speed = 7;
		direction = -90;
	}
		with (instance_create_layer(x,y, "Bullets", oEnemyBullet)) {
		x = self.x-37;
		y = self.y+13;
		speed = 7;
		direction = -90;
	}
		with (instance_create_layer(x,y, "Bullets", oEnemyBullet)) {
		x = self.x-50;
		y = self.y+3;
		speed = 7;
		direction = -90;
	}
}


