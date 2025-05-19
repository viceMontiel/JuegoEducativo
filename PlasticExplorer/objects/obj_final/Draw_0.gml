draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_entrenvls); // Asegúrate de tener una fuente asignada si usas una

var segundos = global.tiempo_total div room_speed;
var minutos = segundos div 60;
segundos = segundos mod 60;

draw_text(room_width/2, room_height/2 - 40, "¡Felicidades, has completado el juego!");
draw_text(room_width/2, room_height/2, "Tu tiempo fue de: " + string(minutos) + " min " + string(segundos) + " seg");
