if (global.is_paused) {
	if (surface_exists(paused_surf)) {
		//desenha a surface na tela se estiver pausado
		draw_surface(paused_surf, 0, 0);
	}
}