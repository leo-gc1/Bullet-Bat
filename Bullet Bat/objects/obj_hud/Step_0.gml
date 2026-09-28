//selecionando a opção do menu com teclado
//selecionando a opção para baixo
if (keyboard_check_pressed(vk_down)) {
	death_menu_index ++;
	
	if (death_menu_index > array_length(death_menu_options) - 1) death_menu_index = 0;
}
//selecionando a opção para cima
if (keyboard_check_pressed(vk_up)) {
	death_menu_index --;
	
	if (death_menu_index < 0) death_menu_index = array_length(death_menu_options) - 1;
}

//checando qual opção foi selecionada
if (mouse_check_button_pressed(mb_left)) {
	switch (selected_option) {
		case (0):
			show_message("Reiniciar");
		break;
		
		case (1):
			show_message("Voltar ao menu");
		break;
		
		case (2):
			show_message("Sair do jogo");
		break;
	}
}
