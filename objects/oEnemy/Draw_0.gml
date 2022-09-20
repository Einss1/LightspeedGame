draw_self();

if (flash > 0) {
	flash--;
	shader_set(whiteShader);
	draw_self();
	shader_reset();
}




