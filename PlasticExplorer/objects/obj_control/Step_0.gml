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
                room_goto(Nivel1a2); // Intermedio entre Nivel 1 y 2
                break;
            case 3:
                room_goto(Nivel2a3); // Intermedio entre Nivel 2 y 3
                break;
            case 4:
				global.tiempo_total = global.tiempo;
                room_goto(rm_final); // ¡Juego completado!
                break;
        }
    }
}

// Acumulador de tiempo jugado
global.tiempo += 1;
