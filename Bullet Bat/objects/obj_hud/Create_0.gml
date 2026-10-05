//opções do menu de morte:
death_menu_options = ["Reiniciar", "Voltar ao menu inicial", "Sair do jogo"];
//verifica se o player morreu
player_is_dead = false;


//opções do menu de pause
pause_menu_options = [
	"Continuar",
	"Reiniciar",
	"Voltar ao menu inicial",
	"Sair do jogo"
]

//opções do menu inicial
start_menu_options = [
	"Iniciar",
	"Controles",
	"Sair do jogo"
]

//opção selecionada no menu
selected_option = -1;

//define o menu que deve ser usado
menu_state = "";


scl = 1;

//função usada para exibir o menu de pause e o menu de morte
//retorna a opção selecionada
function draw_menu(options_list, title_string, scl) {
	draw_set_colour(c_black);
	draw_set_alpha(0.6);
	
	//ADICIONAR UMA FONTE MELHOR

	//Desenhando um retangulo transparente para escurecer a imagem
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), 0);
	
	//desenhando os botões
	draw_set_alpha(1);
	//pegando a posição do centro da imagem
	var _x = display_get_gui_width() / 2;
	var _y = display_get_gui_height() / 2 - 30;
	
	//centraliza o texto horizontalmente e verticalmente
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	//desenha o titulo
	draw_set_colour(c_white);
	draw_set_font(fnt_title);
	draw_text(_x, _y - 220, title_string);
	
	//pega a posição do mouse de acordo com a gui
	var _m_x = device_mouse_x_to_gui(0);
	var _m_y = device_mouse_y_to_gui(0);
	
	var _op_max = array_length(options_list); //total de opções
	var _option_selected = -1; //opção selecionada
	
	for (var i = 0; i < _op_max; i++) {
		var _y2 = _y + (60 * i); //posição em que o texto será colocado
		var string_w = string_width(options_list[i]); //tamanho do texto
		var string_h = string_height(options_list[i]);
		
		//checa se o mouse está encima do texto
		var _mouse_hover = point_in_rectangle(_m_x, _m_y, _x - string_w / 2, _y2 - string_h / 2, _x + string_w / 2, _y2 + string_h / 2);
		
		//define a cor do texto de acordo com a opção marcada
		if (_mouse_hover) {
			draw_set_colour(c_yellow);

			_option_selected = i; //marca qual opção foi selecionado e retorna ela posteriormente
		} else {

			draw_set_colour(c_white);
		}
		
		draw_set_font(fnt_menu);
		draw_text(_x, _y2, options_list[i]);
		

	}
	
	//resetando os parametros do draw
	draw_set_alpha(1);
	draw_set_colour(-1);
	draw_set_font(-1);
	
	return _option_selected;

	
}
