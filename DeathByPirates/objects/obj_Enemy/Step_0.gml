if (dead) {
	instance_destroy()
} else {
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	speed = random_range(0.5, 1.5);

	if (direction > 90 && direction < 270) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
}