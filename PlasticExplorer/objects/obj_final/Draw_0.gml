draw_self();
draw_set_font(fnt_entrenvls); // Asegúrate de tener una fuente asignada si usas una

var segundos = global.tiempo_total div room_speed;
var minutos = segundos div 60;
segundos = segundos mod 60;

draw_text(350,100, "¡Felicidades, has completado el juego!");
draw_text(350,200, "Tu tiempo fue de: " + string(minutos) + " min " + string(segundos) + " seg");
