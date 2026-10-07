function input() {
	//controles do player
	global._right = keyboard_check(ord("D"));
	global._left = keyboard_check(ord("A"));
	global._up = keyboard_check(ord("W"));
	global._down = keyboard_check(ord("S"));
	
	//controles do jogo
	global._pause_key = (keyboard_check_pressed(vk_escape) && room == rm_game);
	
}