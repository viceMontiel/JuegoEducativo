draw_set_font(fnt_vidas); // Usa la fuente con tamaño personalizado
draw_set_color(c_white);  // Color del texto (puedes cambiarlo)
draw_text(80, 100, "Vidas: " + string(global.vidas));
draw_set_color(c_white);

// Convertir el tiempo de frames a segundos
var total_segundos = global.tiempo div room_speed;

// Calcular minutos y segundos
var minutos = total_segundos div 60;
var segundos = total_segundos mod 60;

// Asegurar que los segundos se vean como dos dígitos
var segundos_texto = string(segundos);
if (segundos < 10) {
    segundos_texto = "0" + segundos_texto;
}

// Dibujar texto en formato mm:ss
draw_text(600, 100, "Tiempo " + string(minutos) + ":" + segundos_texto);

draw_set_color(c_white); // Puedes usar cualquier fuente que tengas
draw_text(350, 50, "Nivel " + string(global.nivel));
draw_set_color(c_white);
draw_text(325, 710, "Elementos restantes por recoger: " + string(global.elementos_restantes));


