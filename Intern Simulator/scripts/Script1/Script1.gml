// Funções que não achei no gamemaker

function string_join_compat(separator, arr) {
    var result = "";
    for (var i = 0; i < array_length(arr); i++) {
        result += arr[i];
        if (i < array_length(arr) - 1) result += separator;
    }
    return result;
}

function array_slice_range(_array, _start, _end) {
    var result = [];
    var len = array_length(_array);
	
    // Corrige índices negativos (ex: -1 pega até o último elemento)
    if (_start < 0) _start = len + _start;
    if (_end <= 0) _end = len + _end + 1;

    // Limita aos extremos do array
    if (_start < 0) _start = 0;
    if (_end > len) _end = len;

    // Garante ordem crescente
    if (_end <= _start) return result;

    // Copia os elementos do intervalo
    for (var i = _start; i < _end; i++) {
        array_push(result, _array[i]);
    }

    return result;
}
function get_big_word_index(str_arr, line_length){
	for (var i = 0; i < array_length(str_arr); i++) {
		if (string_length(str_arr[i]) > line_length) return i
	}
	
	return "False"
}



function get_new_str_arr_formated(str_arr, idx ,line_length) {
	var prev_idx = 0;
	var aux_arr = []
	
	while(prev_idx < string_length(str_arr[idx])) {
		array_push(aux_arr, string_copy(str_arr[idx], prev_idx + 1, line_length))
		prev_idx += line_length
	}
	

	//show_debug_message(array_slice_range(str_arr, idx+1, -1))
	

	if (idx != 0) return array_concat(array_slice_range(str_arr, 0, idx), aux_arr, array_slice_range(str_arr, idx+1, -1))
	
	 return array_concat(aux_arr, array_slice_range(str_arr, idx+1, -1))
	
}


function generate_dialogue(_text) {
	if _text == "<INPUT>" return _text
    var new_string = "";
    var line_length = 45;
	var counter = 0
	var new_text = ""
	var aux_text = ""
	
	// Gambiarra para lidar com quebra de linhas 
	aux_text = string_replace_all(_text, "\n", " aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa ")
	text_split = string_split(aux_text, " ")
	
	var idx = get_big_word_index(text_split, line_length);
	
	
	while(idx != "False") {
		text_split = get_new_str_arr_formated(text_split, idx, line_length)
		idx = get_big_word_index(text_split, line_length)
	}

	
	
	for (var i = 0; i < array_length(text_split); i++) {
		var counter_plus_str_len = counter + string_length(text_split[i])
		
		if (counter_plus_str_len + 1 <= line_length) {
			text_split[i] = text_split[i] + " "
			counter = counter_plus_str_len + 1
		}
		else if (counter_plus_str_len <= line_length) {
			text_split[i] = text_split[i]
			counter = counter_plus_str_len
		} else {
			text_split[i-1] = text_split[i-1] + "\n"
			text_split[i] = text_split[i] + " "
			counter = string_length(text_split[i]) + 1
		}
	}

    return string_replace_all(string_join_compat("", text_split), "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "");
}

/*
function generate_dialogue(_text) {
	if _text == "<INPUT>" return _text
    var new_string = "";
    var line_length = 36;
    var prev_idx = 0;
    var text_length = string_length(_text);

    while (prev_idx < text_length) {
		
        var part = string_copy(_text, prev_idx + 1, line_length);
        new_string += string_trim(part)+ "\n"; // usa '#' como quebra de linha em draw_text()
        prev_idx += line_length;
    }

    return new_string;
}
*/