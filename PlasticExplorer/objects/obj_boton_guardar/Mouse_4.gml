if (global.input_confirmado) {
    room_goto(rm_inicio);
} else {
    show_debug_message("Debes confirmar el input antes de guardar.");
}