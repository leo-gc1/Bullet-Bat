function save(){
	
	//armazena os dados a serem salvos nessa variavel
	var _data = {
		max_score: global.max_score
	}
	//converte para json
	var _json = json_stringify(_data);
	//cria o arquivo
	var _file = file_text_open_write("save.json");
	
	//escreve no arquivo
	if (_file != -1) {
		file_text_write_string(_file, _json);
		file_text_close(_file);
	}
}

function load() {
	//verifica se existe um arquivo de save
	if (!file_exists("save.json")) return false
	
	//abre o arquivo
	var _file = file_text_open_read("save.json");
	//verifica se tem dados no arquivo
	if (_file == -1) return false
	//lê o arquivo
	var _json = file_text_read_string(_file);
	
	//armazena os dados nessa variavel
	var _data = json_parse(_json);
	
	//aplica os dados
	global.max_score = _data.max_score
}