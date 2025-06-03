// Fuente y estilos
draw_set_font(fnt_entrenvls);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

// Título superior
draw_set_color(c_white);
draw_text(x_visual, y_visual - 50, "Ingresa tu correo electrónico:");

// Borde
draw_set_color(c_black);
draw_rectangle(x_visual - 4, y_visual - 4, x_visual + ancho + 4, y_visual + alto + 4, false);

// Fondo del input
draw_set_font(fnt_input);
draw_set_color(c_white);
draw_rectangle(x_visual, y_visual, x_visual + ancho, y_visual + alto, false);

// Texto del input
draw_set_color(c_black);
draw_text(x_visual + 5, y_visual + alto / 2, correo_input);

// Cursor parpadeante
if (escribiendo && (current_time mod 1000) < 500) {
    var cursor_x = x_visual + 5 + string_width(string_copy(correo_input, 1, cursor_pos));
    draw_line(cursor_x, y_visual + 5, cursor_x, y_visual + alto - 5);
}

// Instrucciones
draw_set_color(c_teal);
draw_text(x_visual, y_visual + alto + 40, "Presiona Enter para guardar");

// Confirmación
if (!escribiendo && string_length(global.idJugador) > 0) {
    draw_set_color(c_blue);
	draw_set_font(fnt_entrenvls)
    draw_text(x_visual, y_visual + alto + 80, "Guardado: " + global.idJugador + "!");
}
