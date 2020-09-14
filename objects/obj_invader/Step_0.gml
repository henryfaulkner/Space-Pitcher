//DEATH CONDITION
if (y > 620) {
	draw_set_colour(c_white);
	draw_text(100, 100, "YOU LOSE");
	instance_destroy();
}