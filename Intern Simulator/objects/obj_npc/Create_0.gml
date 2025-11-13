is_active = false  // Variável relacionada a se o npc está dialogável

start_dialogue = false;  // Variável que indica se o diálogo começou
dialogue_text = [];         // Array de textos do npc.

current_dialogue_index = 0  // Index do texto atual no array de diálogos
num_dialogues = 0			// Tamanho do array de diálogos.


display_text = "";			// Texto que deve aparecer na tela
text_index = 0;				// Index atual do texto
text_speed = 2; // menor = mais rápido
timer = 0;					// Timer que permite que o texto seja escrito caso alcance text_speed		
done = false;				// Variável que determina se o texto todo já apareceu

// Variáveis relacionadas ao input do usuário.
input_text = ""
correct_answer = "answer"
in_input = false  // Variável que checa se o input já começou


