if (escribiendo) {
    // Insertar sólo caracteres imprimibles, excluyendo flechas y teclas especiales
    for (var i = 32; i <= 126; i++) {
        if (i == vk_f1 || i == vk_f2 ||i == vk_left || i == vk_right || i == vk_enter || i == vk_backspace || i == vk_delete) {
            continue; // Ignorar estas teclas
        }
        if (keyboard_check_pressed(i)) {
            var letra = chr(i);
            correo_input = string_insert(letra, correo_input, cursor_pos + 1);
            cursor_pos += 1;
        }
    }
	
    // Borrar con Backspace
    if (keyboard_check_pressed(vk_backspace)) {
        if (cursor_pos > 0) {
            correo_input = string_delete(correo_input, cursor_pos, 1);
            cursor_pos -= 1;
        }
    }

    // Agregar @ con F1 como alternativa
    if (keyboard_check_pressed(vk_f1)) {
        correo_input = string_insert("@", correo_input, cursor_pos + 1);
        cursor_pos += 1;
    }
	// Agregar @ con F1 como alternativa
    if (keyboard_check_pressed(vk_f2)) {
        correo_input = string_insert(".", correo_input, cursor_pos + 1);
        cursor_pos += 1;
    }

    // Flechas izquierda/derecha
    if (keyboard_check_pressed(vk_left)) {
        cursor_pos = max(cursor_pos - 1, 0);
    }
    if (keyboard_check_pressed(vk_right)) {
        cursor_pos = min(cursor_pos + 1, string_length(correo_input));
    }

    // Confirmar con Enter
    if (keyboard_check_pressed(vk_enter)) {
        global.idJugador = correo_input;
        escribiendo = false;
        show_debug_message("Correo guardado: " + string(global.idJugador));
    }
}

// Detectar clic en el área del input
if (mouse_check_button_pressed(mb_left)) {
    var mouse_x_in = mouse_x;
    var mouse_y_in = mouse_y;

    var x_visual = 50;
    var y_visual = 100;
    var ancho = 500;
    var alto = 40;

    if (mouse_x_in >= x_visual && mouse_x_in <= x_visual + ancho &&
        mouse_y_in >= y_visual && mouse_y_in <= y_visual + alto) {
        escribiendo = true;
    }
}

