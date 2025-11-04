// --- MOVIMENTO AUTOMÁTICO ---
var speed_npc = 1.2; // Velocidade do NPC andando
if (!is_active) {
    // Move-se de um lado pro outro enquanto não está em diálogo
    x += speed_npc * image_xscale;
    
    // Se bater em uma parede ou na borda, vira pro outro lado
    if (place_meeting(x + image_xscale * 4, y, obj_colisores)) {
        image_xscale *= -1; // vira o sprite
    }
}

if (cooldown > 0 && status_conversa == 1) {
	cooldown--;
} else if (status_conversa == 1) {
	is_active = false;
	status_conversa = 0;
}