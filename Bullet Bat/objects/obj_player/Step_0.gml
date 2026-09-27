
//controles do player
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

//calcula o movimento do player
hspd = (_right - _left) * spd;
vspd = (_down - _up) * spd;

//colisões
//horizontal
if (place_meeting(x + hspd, y, obj_block)) {
	while (!place_meeting(x + sign(hspd), y, obj_block)) {
		x += sign(hspd);
	}
	hspd = 0;
}
//vertical
if (place_meeting(x, y + vspd, obj_block)) {
	while (!place_meeting(x, y + sign(vspd), obj_block)) {
		y += sign(vspd);
	}
	vspd = 0;
}

//aplica o movimento ao player
x += hspd;
y += vspd;

