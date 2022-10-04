if (ivulnerable == 0) {
	flash = 6;
	hp--;
	ivulnerable = 120;
} 

if (hp == 0) {
	game_restart();
}