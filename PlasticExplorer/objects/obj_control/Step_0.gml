// Primero revisamos si el jugador perdió todas las vidas
if (global.vidas <= 0) {
    global.nivel = 1;
    room_goto(rm_gameover);
}

// Si no estamos pasando de nivel y los elementos restantes llegaron a 0, iniciamos la transición
if (!pasando_nivel && global.elementos_restantes <= 0) {
    mensaje_nivel_completado = true;
    pasando_nivel = true;
    //tiempo_mensaje = room_speed * 2; // Esperamos 2 segundos (o ajusta a lo que quieras)
    global.nivel += 1;
}

// Si estamos en transición entre niveles
if (pasando_nivel) {
    tiempo_mensaje -= 1;

    if (tiempo_mensaje <= 0) {
        switch (global.nivel) {
            case 2:
                room_goto(Nivel1a2);
                break;
            case 3:
                room_goto(Nivel2a3);
                break;
            case 4:
                global.tiempo_total = global.tiempo; // Guardamos el tiempo total
                room_goto(rm_final);
                break;
        }
    }
}

// Sumar el tiempo total jugado (si el juego sigue)
global.tiempo += 1;
