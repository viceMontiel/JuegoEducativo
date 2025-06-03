if (escribiendo) {
    var letra = keyboard_lastchar;

    // Si es distinta a la última letra ingresada y no es tecla de control
    if (letra != tecla_anterior &&
        letra != "" &&
        !keyboard_check(vk_shift) &&
        !keyboard_check(vk_control) &&
        !keyboard_check(vk_alt)
    ) {
        // Aceptar solo letras, números, símbolos básicos
        if ((letra == "." || letra == "@" || letra == "-" || letra == "_" ||
            (ord(letra) >= 48 && ord(letra) <= 57) || // números
            (ord(letra) >= 65 && ord(letra) <= 90) || // mayúsculas
            (ord(letra) >= 97 && ord(letra) <= 122)) // minúsculas
        ) {
            correo_input = string_insert(letra, correo_input, cursor_pos + 1);
            cursor_pos += 1;
        }

        tecla_anterior = letra;
    }

    // Reiniciar cuando no se presiona ninguna tecla
    if (letra == "") {
        tecla_anterior = "";
    }

    // Backspace
    if (keyboard_check_pressed(vk_backspace) && cursor_pos > 0) {
        correo_input = string_delete(correo_input, cursor_pos, 1);
        cursor_pos -= 1;
    }

    // Flechas
    if (keyboard_check_pressed(vk_left)) {
        cursor_pos = max(cursor_pos - 1, 0);
    }
    if (keyboard_check_pressed(vk_right)) {
        cursor_pos = min(cursor_pos + 1, string_length(correo_input));
    }

    // Enter para guardar
    if (keyboard_check_pressed(vk_enter)) {
        global.idJugador = correo_input;
        escribiendo = false;
        show_debug_message("Correo guardado: " + global.idJugador);
		global.input_confirmado = true;  // <-- Aquí marcas que se confirmó
    }
}
