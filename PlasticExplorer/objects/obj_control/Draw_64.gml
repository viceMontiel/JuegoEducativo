draw_set_font(fnt_vidas); // Usa la fuente con tamaño personalizado
draw_set_color(c_white);  // Color del texto (puedes cambiarlo)
draw_text(80, 100, "Vidas: " + string(global.vidas));
draw_set_color(c_white);
draw_text(600, 100, "Tiempo: " + string_format(global.tiempo / room_speed, 0, 2));

draw_set_color(c_white); // Puedes usar cualquier fuente que tengas
draw_text(350, 50, "Nivel " + string(global.nivel));

draw_set_color(c_white);
draw_text(325, 710, "Elementos restantes por recoger: " + string(global.elementos_restantes));


