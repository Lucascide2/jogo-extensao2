
if (!obj_menu_esc.is_active) {
	timer_ms += delta_time; // delta_time em milissegundos
}


if (timer_ms >= 60000000) { // 60000 ms = 1 minuto
    timer_ms -= 60000000;   // reinicia o timer
    minutos += 1;  
	
	horas = 13 + floor(minutos/2)
	
	if ((minutos % 2) == 0) time_str = string(horas) + ":00"
	else time_str = string(horas) + ":30"
	
}

