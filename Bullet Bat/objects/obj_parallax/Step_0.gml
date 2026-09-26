var _layer_7 = layer_get_id("Background_7");
var _layer_6 = layer_get_id("Background_6");
var _layer_5 = layer_get_id("Background_5");
var _layer_4 = layer_get_id("Background_4");
var _layer_3 = layer_get_id("Background_3");
var _layer_2 = layer_get_id("Background_2");
var _layer_1 = layer_get_id("Background_1");

if (parallax_spd <= 3) {
	parallax_spd += 0.001;
	show_debug_message(parallax_spd);
}

layer_hspeed(_layer_7, parallax_spd * -2);
layer_hspeed(_layer_6, parallax_spd * -2.1);
layer_hspeed(_layer_5, parallax_spd	* -2.2);
layer_hspeed(_layer_4, parallax_spd * -2.3);
layer_hspeed(_layer_3, parallax_spd * -2.4);
layer_hspeed(_layer_2, parallax_spd * -2.5);
layer_hspeed(_layer_1, parallax_spd * -2.6);
