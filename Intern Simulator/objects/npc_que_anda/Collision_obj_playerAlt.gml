
// --- DETECTAR COLISÃO COM PLAYER ---
if (!is_active && status_conversa == 0) {
	// Ativa o dialogo quando o player encosta
	obj_playerAlt.able_to_move = false
	is_active = true;
	start_dialogue = true;
	current_dialogue_index = 0;
	num_dialogues = 6;
	dialogue_text[0] = "Hmmmmm...";
	dialogue_text[1] = "Hmm...";
	dialogue_text[2] = "Eita, esbarrou em mim! Haha estava andando de um lado para outro pensando.";
	dialogue_text[3] = "Você é o estagiário novo né? Deve querer umas dicas.";
	dialogue_text[4] = "Mas não tenho tempo pra conversar agora...";
	dialogue_text[5] = "Tchau!";
	display_text = "";
	text_index = 0;
	done = false;
}

// --- SISTEMA DE DIÁLOGO ---
if (is_active) {
    // Escreve o texto letra por letra
    if (!done) {
        timer++;
        if (timer >= text_speed) {
            timer = 0;
            if (text_index < string_length(dialogue_text[current_dialogue_index])) {
                display_text += string_char_at(dialogue_text[current_dialogue_index], text_index + 1);
                text_index++;
            } else {
                done = true; // terminou de escrever o texto atual
            }
        }
    } else {
        // Se já terminou de escrever o texto e o jogador aperta Z, passa pro próximo
        if (keyboard_check_pressed(ord("Z"))) {
            current_dialogue_index++;
            if (current_dialogue_index < num_dialogues) {
                // Reinicia o processo pro próximo texto
                display_text = "";
                text_index = 0;
                done = false;
            } else {
                // Terminou todos os diálogos
                start_dialogue = false;
                display_text = "";
				cooldown = 3 * 60;
				status_conversa = 1;
				obj_playerAlt.able_to_move = true
            }
        }
    }
}
