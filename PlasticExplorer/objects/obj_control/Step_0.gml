// Si las vidas se acaban, se va a la pantalla de Game Over
// Reseteamos las variables en el evento de creación del `obj_control`
if (global.vidas <= 0) {
    // Asegúrate de resetear las variables si se reinicia el juego
    global.vidas = 3;
    global.elementos_restantes = 10;  // El valor inicial de elementos en el primer nivel
    global.tiempo = 0;
    global.nivel = 1; // Nivel de reinicio

    // Luego se puede cambiar la room a Game Over
    room_goto(rm_gameover);
}

// Si no estamos pasando de nivel y los elementos restantes llegan a 0, cambiamos de nivel
if (!pasando_nivel && global.elementos_restantes <= 0) {
    mensaje_nivel_completado = true;
    pasando_nivel = true;
    global.nivel += 1; // Aumentamos el nivel
}
// Manejar el cambio de room según el nivel actual
if (pasando_nivel) {
    tiempo_mensaje -= 1;

    if (tiempo_mensaje <= 0) {
        switch (global.nivel) {
            case 2:
                room_goto(Nivel1a2); // Ir al intermedio entre Nivel 1 y 2
                break;
            case 3:
                room_goto(Nivel2a3); // Ir al intermedio entre Nivel 2 y 3
                break;
            // Puedes agregar más niveles aquí
        }
    }
}
global.tiempo += 1; // Aumentar el tiempo en cada frame
