randomise();

//Posição em que a bala será criada
pos_x = room_width + 10; //posição x deve ser fora da room
random_y = random_range(0 + 60,  room_height - 60); //posição y deve ser aleatória

bullet = instance_create_layer(pos_x, random_y, "Instances", obj_bullet);