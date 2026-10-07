input()

//checa se a tecla de pause foi pressionada
if (global._pause_key || toggle_pause) {
	
	
	//alterna o valor de is_paused
	global.is_paused = !global.is_paused;
	toggle_pause = false;
	
	if (global.is_paused) {
		//define quando o pause começou
		pause_time = current_time;

		
		//cria uma surface com o tamanho da tela
		paused_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
		
		//desenha a tela atual do jogo na surface
		surface_set_target(paused_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		instance_deactivate_all(true); //desativa todas as intâncias
		instance_activate_object(obj_parallax); //garante que o obj_parallax não desative, pois precisa congelar o background individualmente
		instance_activate_object(obj_hud); //obj_hud não deve ser desativado pois desenha o menu de pause
	} else {
		
		//soma o tempo de pause ao tempo total de jogo
		global.game_start_time += current_time - pause_time;

		
		
		//ativa as instâncias novamente
		instance_activate_all();
		
		//tira a surface
		if (surface_exists(paused_surf)) surface_free(paused_surf);
		
	}
	
}

if (!global.is_paused) {		
	//aumenta a dificuldade progressivamente baseado no tempo de jogo
	global.difficulty = min(2, (current_time - global.game_start_time) / 75000);
}

