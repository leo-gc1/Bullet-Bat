randomise();

spd = 20;


function set_random_position() {
	pos_x = room_width + 10;
	pos_y = random_range(0 + 60, room_height - 60);

	x = pos_x;
	y = pos_y;
}


set_random_position();
