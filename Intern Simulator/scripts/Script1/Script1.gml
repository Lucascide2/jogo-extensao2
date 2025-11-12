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