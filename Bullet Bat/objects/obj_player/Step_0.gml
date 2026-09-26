var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));


hspd = (_right - _left);
vspd = (_down - _up);


x += hspd * spd;
y += vspd * spd;

