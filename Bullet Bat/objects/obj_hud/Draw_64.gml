

if (instance_exists(obj_player)) {
	draw_text(10, 10, "Vida: ");
	draw_text(60, 10, obj_player.life);
}

function death_menu(options_list) {
	draw_set_colour(c_black);
	draw_set_alpha(0.6);
	
	//Desenhando um retangulo transparente para escurecer a imagem
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), 0);
	
	//desenhando os botões
	draw_set_alpha(1);
	//pegando a posição do centro da imagem
	var _x = display_get_gui_width() / 2;
	var _y = display_get_gui_height() / 2;
	
	//centraliza o texto
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	var _op_max = array_length(options_list);
	for (var i = 0; i < _op_max; i++) {
		if (death_menu_index == i) {
			draw_set_colour(c_yellow);
		} else draw_set_colour(c_white);
		
		draw_text(_x, _y + (30 * i), options_list[i])
	}
	
	//resetando os parametros do draw
	draw_set_alpha(1);
	draw_set_colour(-1);
	
}


death_menu(death_menu_op);