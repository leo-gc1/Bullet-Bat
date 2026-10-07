
//checa se a bala saiu da room ou colidiu com o player
if (!instance_exists(obj_bullet)) {
	//aumenta a velocidade da bala de acordo com a dificuldade
	bullet_spd = 15 + global.difficulty * 4;
	
	//a dificuldade aumenta a chance da bala spawnar na posição do player
	var _chance = 0.1 + global.difficulty / 4;
	//show_debug_message(_chance);
	if (random(1) < _chance) {
		bullet = instance_create_layer(pos_x, obj_player.y, "Instances", obj_bullet);
	} else {
		random_y = random_range(0 + 60, room_height - 60); //gera outra posição aleatória
		bullet = instance_create_layer(pos_x, random_y, "Instances", obj_bullet); //cria outra bala na nova posição
		
	}
	
	
}

//cria um obj_life com 15% de chance se o player foi atingido
if (player_hitted && !instance_exists(obj_life)) {
	player_hitted = false;
	var _chance = irandom(100);
	
	if (_chance < 15) {
		instance_create_layer(0, 0, "Instances", obj_life);
	}
}