c_index += 1/60
c_index %= 1;

//valor da posição y do objeto
var _y = animcurve_channel_evaluate(curve, c_index);


//aplica os vetores
x += -spd;
y += _y * 10;
