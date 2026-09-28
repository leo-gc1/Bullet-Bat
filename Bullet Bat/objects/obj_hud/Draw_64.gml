

if (instance_exists(obj_player)) {
	draw_text(10, 10, "Vida: ");
	draw_text(60, 10, obj_player.life);
}

function death_menu(options_list, option_selected) {
	draw_set_colour(c_black);
	draw_set_alpha(0.6);
	
	//Desenhando um retangulo transparente para escurecer a imagem
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), 0);
	
	//desenhando os botões
	draw_set_alpha(1);
	//pegando a posição do centro da imagem
	var _x = display_get_gui_width() / 2;
	var _y = display_get_gui_height() / 2 - 50;
	
	//centraliza o texto
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	//pega a posição do mouse de acordo com a gui
	var _m_x = device_mouse_x_to_gui(0);
	var _m_y = device_mouse_y_to_gui(0);
	
	var _op_max = array_length(options_list); //total de opções
	for (var i = 0; i < _op_max; i++) {
		var _y2 = _y + (50 * i); //posição em que o texto será colocado
		var string_w = string_width(options_list[i]); //tamanho do texto
		var string_h = string_height(options_list[i]);
		
		//checa se o mouse está encima do texto
		var _mouse_hover = point_in_rectangle(_m_x, _m_y, _x - string_w / 2, _y2 - string_h / 2, _x + string_w / 2, _y2 + string_h / 2);
		
		//define a cor do texto de acordo com a opção marcada
		if (_mouse_hover) {
			draw_set_colour(c_yellow);
			option_selected = i;
		} else {
			draw_set_colour(c_white);
		}
		


		draw_text(_x, _y2, options_list[i])
		

	}
	
	//resetando os parametros do draw
	draw_set_alpha(1);
	draw_set_colour(-1);
	

	return option_selected;
}



selected_option = death_menu(death_menu_options, death_menu_index);
