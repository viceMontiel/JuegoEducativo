// Si las vidas se acaban, se va a la pantalla de Game Over
if (global.vidas <= 0) {
    room_goto(rm_gameover);
}
// Si no estamos pasando de nivel y los elementos restantes llegan a 0, cambiamos de nivel
if (!pasando_nivel && global.elementos_restantes <= 0) {
    mensaje_nivel_completado = true;
    pasando_nivel = true;
    global.nivel += 1; // Aumentamos el nivel
}
// Si estamos pasando de nivel, esperamos un poco antes de cambiar a la siguiente habitación
if (pasando_nivel) {
    tiempo_mensaje -= 1;
    if (tiempo_mensaje <= 0) {
        if (global.nivel == 2) {
            room_goto(Nivel1a2); // Cambia a la habitación del nivel 2
        }
    }
}
global.tiempo += 1; // Aumentar el tiempo en cada frame
