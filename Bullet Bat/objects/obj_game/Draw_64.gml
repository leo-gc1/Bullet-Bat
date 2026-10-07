if (global.is_paused) {
	if (surface_exists(paused_surf)) {
		//desenha a surface na tela se estiver pausado
		draw_surface(paused_surf, 0, 0);
	}
}

function draw_controls_room() {
	draw_set_colour(c_black);
	draw_set_alpha(0.4);
	
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), 0);
	
	draw_set_alpha(1);
	
	
	var _x = display_get_gui_width() / 2;
	var _y = display_get_gui_height() / 2;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_colour(c_white);
	draw_set_font(fnt_title);
	draw_text(_x, _y - 250, "Controles")
	
	draw_set_font(fnt_menu);
	draw_text(_x, _y, "Mover para cima: W \n Mover para baixo: S \n Mover para a direita: D \n Mover para a esquerda: A");
	
	var _button_x = _x;
	var _button_y = _y + 250;
	var _string_w = string_width("Voltar ao menu inicial");
	var _string_h = string_height("I");
	
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _button_x - _string_w / 2, _button_y - _string_h / 2, _button_x + _string_w /2, _button_y + _string_h / 2)) {
		draw_set_colour(c_yellow);
		if (mouse_check_button_pressed(mb_left)) room_goto(rm_start_menu);
	} else {
		draw_set_colour(c_white);
	}
	
	draw_text(_button_x, _button_y, "Voltar ao menu inicial")
	
	
	
	//resetando os parametros
	draw_set_halign(-1);
	draw_set_valign(-1);
	
}

if (room == rm_controls) {
	draw_controls_room();
	//instance_deactivate_object(obj_hud);
}
