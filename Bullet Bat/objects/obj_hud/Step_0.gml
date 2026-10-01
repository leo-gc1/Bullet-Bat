//define as ações do menu de morte
function death_menu_actions(selected_option) {
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
		menu_state = "";
	}
}

//define as ações do menu de pause
function pause_menu_actions(selected_option) {
	//checando qual opção foi selecionada
	if (mouse_check_button_pressed(mb_left)) {
		switch (selected_option) {
			case (0):
				obj_game.toggle_pause = true;
			break;
		
			case (1):
				room_restart();
			break;
		
			case (2):
				show_message("Voltar ao menu inicial")
			break;
			
			case (3):
				game_end();
			break;
		}
		menu_state = "";
	}
}

//escolhe a ação do menu que está sendo executado
switch (menu_state) {
	case "":
	
	break;
	
	case "pause":
		pause_menu_actions(selected_option);
	break
	
	case "death":
		death_menu_actions(selected_option);
	break;
}