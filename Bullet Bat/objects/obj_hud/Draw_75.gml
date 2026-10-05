if (!player_is_dead && room == rm_game) {	
	draw_hud(obj_player.life, fnt_hud);
}

//mostra o menu de morte se o player morrer
if (player_is_dead) {
	menu_state = "death";
	selected_option = draw_menu(death_menu_options, "Você morreu!");
}

//menu de pause
if (global.is_paused && room == rm_game) {
	menu_state = "pause";
	selected_option = draw_menu(pause_menu_options, "Jogo pausado");
}

//menu inicial
if (room == rm_start_menu) {
	menu_state = "start";
	selected_option = draw_menu(start_menu_options, "Bullet Bat");
}
