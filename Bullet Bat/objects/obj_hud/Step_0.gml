//define as ações do menu de morte
function death_menu_actions(selected_option) {
	//checando qual opção foi selecionada
	if (mouse_check_button_pressed(mb_left)) {
		//player_is_dead = false;
		switch (selected_option) {
			case (0):
				death_menu_options[selected_option].action();
			break;
		
			case (1):
				death_menu_options[selected_option].action();
			break;
		
			case (2):
				death_menu_options[selected_option].action();
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
				pause_menu_options[selected_option].action();
			break;
		
			case (1):
				pause_menu_options[selected_option].action();
			break;
		
			case (2):
				pause_menu_options[selected_option].action();
			break;
			
			case (3):
				pause_menu_options[selected_option].action();
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
				start_menu_options[selected_option].action();
			break;
		
			case (1):
				start_menu_options[selected_option].action();
			break;
		
			case (2):
				start_menu_options[selected_option].action();
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
