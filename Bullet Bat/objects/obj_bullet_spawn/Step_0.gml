
//checa se a bala saiu da room ou colidiu com o player
if (!instance_exists(obj_bullet)) {
	random_y = random_range(0 + 60, room_height - 60); //gera outra posição aleatória
	bullet = instance_create_layer(pos_x, random_y, "Instances", obj_bullet); //cria outra bala na nova posição
}
