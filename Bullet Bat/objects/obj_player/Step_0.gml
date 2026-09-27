input(); //chama a função dos inputs, guardada em scr_controls

function move() {
	//calcula o movimento do player
	hspd = (global._right - global._left) * spd;
	vspd = (global._down - global._up) * spd;

	//colisões
	//horizontal
	if (place_meeting(x + hspd, y, obj_block)) {
		while (!place_meeting(x + sign(hspd), y, obj_block)) {
			x += sign(hspd);
		}
		hspd = 0;
	}
	//vertical
	if (place_meeting(x, y + vspd, obj_block)) {
		while (!place_meeting(x, y + sign(vspd), obj_block)) {
		y += sign(vspd);
		}
		vspd = 0;
	}

	//aplica o movimento ao player
	x += hspd;
	y += vspd;

}

switch (state) {
	case "appearing":
		sprite_index = spr_player_appearing;

		
		if (image_index >= image_number - 1) {
			image_index = image_number - 1;
			
			state = "free";
		}
	break;
	
	case "free":
		sprite_index = spr_player_free;
		move();
	break;
	
}





