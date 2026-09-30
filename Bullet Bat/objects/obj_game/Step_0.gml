if (keyboard_check_pressed(vk_escape)) {
	global.is_paused = !global.is_paused;
	
	if (global.is_paused) {
		instance_deactivate_all(true);
		instance_activate_object(obj_hud);
	} else {
		instance_activate_all();
	}
	
}