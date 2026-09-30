//mostra a vida do player
if (instance_exists(obj_player)) {
	draw_text(10, 10, "Vida: ");
	draw_text(60, 10, obj_player.life);
}


//mostra o menu de morte se o player morrer
if (player_is_dead) {
	selected_option = draw_menu(death_menu_options);
}

//menu de pause
if (global.is_paused) {
	//selected_option = draw_menu(death_menu_options);
}
