//mostra a vida do player
if (instance_exists(obj_player)) {
	draw_text(10, 10, "Vida: ");
	draw_text(60, 10, obj_player.life);
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

if (room == rm_start_menu) {
	menu_state = "start";
	selected_option = draw_menu(start_menu_options, "Bullet Bat");
}
