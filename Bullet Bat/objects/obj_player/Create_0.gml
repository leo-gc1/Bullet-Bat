hspd = 0; //velocidade horizontal
vspd = 0; //velocidade vertical
spd = 5; //velocidade geral

state = "appearing"; //estado do player


obj_hud.player_is_dead = false;
life = 5; //vida do player
obj_hud.player_life = life; //vida que aparecerá na hud
hitted = false; //checa se o player foi atingido
healthed = false;

//escala de tamanho do player, efeito visual
sclx = 1;
scly = 1;

global.game_start_time = current_time;