
randomise(); 

spd = 15; //velocidade da bala

//reescala a imagem para aparecer mais na room
image_xscale = 2; 
image_yscale = 2;

//função para definir uma posição aleatória
function set_random_position() {
	pos_x = room_width + 10; //posição x para aparecer fora da room
	pos_y = random_range(0 + 60, room_height - 60); //posição y é aleatória com 60px de margem das bordas

	//define as posições
	x = pos_x;
	y = pos_y;
}

//o objeto é criado com uma posição já aleatória
set_random_position();