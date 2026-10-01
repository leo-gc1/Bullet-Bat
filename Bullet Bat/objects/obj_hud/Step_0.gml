//define as ações do menu de morte
function death_menu_actions(selected_option) {
	//checando qual opção foi selecionada
	if (mouse_check_button_pressed(mb_left)) {
		switch (selected_option) {
			case (0):
				room_restart();
				player_is_dead = false; //define que o player "reviveu"
			break;
		
			case (1):
				room_goto(rm_start_menu);
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
				obj_game.toggle_pause = true;
				room_restart();
			break;
		
			case (2):
				room_goto(rm_start_menu);
			break;
			
			case (3):
				game_end();
			break;
		}
		menu_state = "";
	}
}


//define as ações do menu inicial
function start_menu_actions(selected_option) {
	//checando qual opção foi selecionada
	if (mouse_check_button_pressed(mb_left)) {
		switch (selected_option) {
			case (0):
				room_goto(rm_game);
			break;
		
			case (1):
				show_message("Mostra os controles")
			break;
		
			case (2):
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
	
	case "start":
		start_menu_actions(selected_option);
	break;
}

//if (room == rm_start_menu && keyboard_check_pressed(vk_space)) room_goto_next();
