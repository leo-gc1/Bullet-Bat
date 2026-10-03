
//checa se a bala saiu da room ou colidiu com o player
if (!instance_exists(obj_bullet)) {
	random_y = random_range(0 + 60, room_height - 60); //gera outra posição aleatória
	bullet = instance_create_layer(pos_x, random_y, "Instances", obj_bullet); //cria outra bala na nova posição
}

//cria um obj_life com 15% de chance se o player foi atingido
if (player_hitted && !instance_exists(obj_life)) {
	player_hitted = false;
	var _chance = irandom(100);
	
	if (_chance < 15) {
		instance_create_layer(0, 0, "Instances", obj_life);
	}
}