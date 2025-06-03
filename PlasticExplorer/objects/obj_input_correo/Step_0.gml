if (escribiendo) {

    var max_length = 50; // Máximo caracteres

    // Primero detectar Alt + Q para '@'
    if (keyboard_check_pressed(ord("Q")) && keyboard_check(vk_alt) && string_length(correo_input) < max_length) {
        correo_input = string_insert("@", correo_input, cursor_pos + 1);
        cursor_pos += 1;
    }
    else {
        // Letras A-Z y a-z (solo si no es Alt + Q)
        for (var i = ord("A"); i <= ord("Z"); i++) {
            if (keyboard_check_pressed(i) && string_length(correo_input) < max_length) {
                var letra = chr(i);
                if (!keyboard_check(vk_shift)) {
                    letra = string_lower(letra);
                }
                correo_input = string_insert(letra, correo_input, cursor_pos + 1);
                cursor_pos += 1;
                break; // Solo una letra por ciclo
            }
        }
    }

    // Números 0-9
    for (var i = ord("0"); i <= ord("9"); i++) {
        if (keyboard_check_pressed(i) && string_length(correo_input) < max_length) {
            correo_input = string_insert(chr(i), correo_input, cursor_pos + 1);
            cursor_pos += 1;
            break; // Solo un número por ciclo
        }
    }

    // Punto '.'
    if (keyboard_check_pressed(190) && string_length(correo_input) < max_length) {
        correo_input = string_insert(".", correo_input, cursor_pos + 1);
        cursor_pos += 1;
    }

    // Guion '-' y guion bajo '_'
    if (keyboard_check_pressed(189) && string_length(correo_input) < max_length) {
        var char_to_insert = keyboard_check(vk_shift) ? "_" : "-";
        correo_input = string_insert(char_to_insert, correo_input, cursor_pos + 1);
        cursor_pos += 1;
    }

	// Backspace con borrado continuo
	if (keyboard_check(vk_backspace)) {
	    if (borrar_delay <= 0) {
	        if (cursor_pos > 0) {
	            correo_input = string_delete(correo_input, cursor_pos, 1);
	            cursor_pos -= 1;
	        }
	        borrar_delay = borrar_intervalo;
	    } else {
	        borrar_delay -= 1;
	    }
	} else {
	    borrar_delay = 0; // reiniciar si no se mantiene presionada
	}


    // Flechas izquierda y derecha
    if (keyboard_check_pressed(vk_left)) {
        cursor_pos = max(cursor_pos - 1, 0);
    }
    if (keyboard_check_pressed(vk_right)) {
        cursor_pos = min(cursor_pos + 1, string_length(correo_input));
    }

    // Enter para confirmar
    if (keyboard_check_pressed(vk_enter)) {
        global.idJugador = correo_input;
        escribiendo = false;
        show_debug_message("Correo guardado: " + global.idJugador);
        global.input_confirmado = true;
    }

    // Ajustar cursor a los límites de la cadena
    cursor_pos = clamp(cursor_pos, 0, string_length(correo_input));
}
