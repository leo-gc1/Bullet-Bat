//define as posições iniciais
x = room_width + 10;
y = irandom_range(60, room_height - 242);


oscilation = 10; //oscilação da posição y do objeto
spd = 4; //velocidade do objeto

//curva de animação com a posição u
curve = animcurve_get_channel(ac_position, "scale");
c_index = 0;

