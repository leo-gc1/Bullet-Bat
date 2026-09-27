input(); //chama a função dos inputs, guardada em scr_controls

function state_appearing() {
	sprite_index = spr_player_appearing;
		if (image_index >= image_number - 1) {
			image_index = image_number - 1;
			
			state = "free";
		}
}

function state_free() {
	
	//se o player foi atingido, roda a animação de hit
	if (!hitted) {
		sprite_index = spr_player_free; //roda a animação
	} else {
		if (sprite_index != spr_player_hit) image_index = 0; //se o sprite acabou de mudar, zera o index da animação
		sprite_index = spr_player_hit;
		
		//finaliza a animação no final dela
		if (image_index >= image_number - 1) {
			image_index = image_number - 1;
			hitted = false;
		}
	}
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
	
	//verifica se o player morre
	if (life <= 0) {
		life = 0;
		state = "death";
	}
}

function state_death() {
	instance_destroy(obj_bullet); //destrói o projétil
	instance_destroy(obj_bullet_spawn);
	 
	y += 10; //o objeto cai para fora da room
	if (y > room_height) instance_destroy(self); //destrói o objeto ao sair da room
	
	
	if (sprite_index != spr_player_death) image_index = 0; //zera o index da animação caso imediatamente ocorreu a troca de estado
	sprite_index = spr_player_death; //define a animação de morte
	
	//finaliza a animação ao terminar
	if (image_index >= image_number -1) {
		image_index = image_number - 1;
	}
}

switch (state) {
	case "appearing":
		state_appearing();
	break;
	
	case "free":
		state_free();
	break;
	
	case "death":
		state_death();
	break;
}





