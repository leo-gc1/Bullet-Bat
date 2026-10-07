
//caso o player esteja se movendo e o player exista
if (object_exists(obj_player)) {
	if (obj_player.state == "free") {
		x -= spd; //aplica a velocidade à bala
	} else {
		x += 0; 
	}
}

if (x < 0) instance_destroy();