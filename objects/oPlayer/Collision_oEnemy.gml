if (ivulnerable == 0) {
	hp = hp - 20;
	ivulnerable = 120;
} 

if (hp == 0) {
	game_restart();
}