
//se a velocidade for menor que 30, aumenta-a ao sair da room
if (spd <= 30) {
	spd += 0.1;
	//show_debug_message(spd); 
}

//define outra posição aleatória
set_random_position();