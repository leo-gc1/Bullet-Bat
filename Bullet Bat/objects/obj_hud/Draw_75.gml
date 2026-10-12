//draw_text(120, 20, string(global.difficulty));

if (room == rm_game && !global.is_paused) {
	draw_hud(player_life, fnt_hud);
}

//mostra o menu de morte se o player morrer
if (player_is_dead && room == rm_game) {
	menu_state = "death";
	selected_option = draw_menu(death_menu_options, "Você morreu!", global.max_score, global.score);
}

//menu de pause
if (global.is_paused && room == rm_game) {
	scr_score_control();
	menu_state = "pause";
	selected_option = draw_menu(pause_menu_options, "Jogo pausado", global.max_score, global.score);
}

//menu inicial
if (room == rm_start_menu) {
	menu_state = "start";
	selected_option = draw_menu(start_menu_options, "Bullet Bat", global.max_score);
}
