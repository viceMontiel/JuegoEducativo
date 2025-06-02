// Estilo visual
var x_visual = 50;
var y_visual = 100;
var ancho = 500;
var alto = 40;

// Título superior
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_entrenvls);
draw_text(x_visual + ancho/2, 30, "Ingresa tu correo electrónico:")
// Fondo de input (borde)
draw_set_color(c_black);
draw_set_font(-1);
draw_rectangle(x_visual - 4, y_visual - 4, x_visual + ancho + 4, y_visual + alto + 4, false);

// Fondo blanco de input
draw_set_color(c_white);
draw_rectangle(x_visual, y_visual, x_visual + ancho, y_visual + alto, false);

// Texto dentro de la caja
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x_visual + 5, y_visual + alto / 2, correo_input);

// Cursor parpadeante
// Cursor
if (escribiendo && (current_time mod 1000) < 500) {
    var before_cursor = string_copy(correo_input, 1, cursor_pos);
    var text_width = string_width(before_cursor);
    draw_line(x_visual + 5 + text_width, y_visual + 5, x_visual + 5 + text_width, y_visual + alto - 5);
}

// Instrucciones
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_text(x_visual, y_visual + alto + 60, "Presiona Enter para guardar");

// Mensaje de confirmación

draw_set_color(c_blue);
draw_set_halign(fa_left);
draw_text(x_visual, y_visual + alto + 20, "Ingresa 'f1' o 'fn+f1' para @");
draw_text(x_visual, y_visual + alto + 40, "Ingresa 'f2' o 'fn+f2' para .");

// Mensaje de confirmación
if (!escribiendo) {
    draw_set_color(c_blue);
	draw_set_font(fnt_entrenvls);
    draw_text(x_visual, y_visual + alto + 100, string(global.idJugador) + "!");
}
