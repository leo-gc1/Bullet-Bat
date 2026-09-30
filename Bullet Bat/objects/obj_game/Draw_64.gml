if (global.is_paused) {
	if (!surface_exists(paused_surf)) {
		paused_surf = surface_create(1366, 768);
		surface_set_target(paused_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
	}
	
	if (surface_exists(paused_surf)) {
		draw_surface(paused_surf, 0, 0);
	}
}