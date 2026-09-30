
//função que desenha o background
function draw_background(parallax_spd) {
	//pega o ID das camadas de background
	var _layer_7 = layer_get_id("Background_7");
	var _layer_6 = layer_get_id("Background_6");
	var _layer_5 = layer_get_id("Background_5");
	var _layer_4 = layer_get_id("Background_4");
	var _layer_3 = layer_get_id("Background_3");
	var _layer_2 = layer_get_id("Background_2");
	var _layer_1 = layer_get_id("Background_1");

	//define a velocidade do background
	layer_hspeed(_layer_7, parallax_spd * -2);
	layer_hspeed(_layer_6, parallax_spd * -2.1);
	layer_hspeed(_layer_5, parallax_spd	* -2.2);
	layer_hspeed(_layer_4, parallax_spd * -2.3);
	layer_hspeed(_layer_3, parallax_spd * -2.4);
	layer_hspeed(_layer_2, parallax_spd * -2.5);
	layer_hspeed(_layer_1, parallax_spd * -2.6);
}


if (!global.is_paused) {
	//calcula a velocidade do background
	if (parallax_spd <= 3) {
		//verifica se o player existe
		if (!instance_exists(obj_player)) {
			parallax_spd = lerp(parallax_spd, 0.1, 0.01); //se o player morreu, define a velocidade do paralax para 0.1
		} else {
			parallax_spd += 0.001; //aumenta gradualmente a velocidade do paralax
		}
	}
	
	//desenha o background com a velocidade
	draw_background(parallax_spd);
} else {
	//se estiver pausado, desenha o background com velocidade 0
	draw_background(0);
}


