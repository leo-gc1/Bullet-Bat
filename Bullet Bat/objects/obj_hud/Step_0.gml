

//checando qual opção foi selecionada
if (mouse_check_button_pressed(mb_left)) {
	switch (selected_option) {
		case (0):
			room_restart();
		break;
		
		case (1):
			show_message("Voltar ao menu");
		break;
		
		case (2):
			game_end();
		break;
	}
}
