// Esto puede ir en el objeto controlador del juego, en su Create o Room Start

// Inicializar por nivel
if (room == Nivel1) {
    global.elementos_restantes = 10;
    global.nivel = 1;
    global.nivel_actual = 1;
    
    // Iniciar tiempo solo una vez al comienzo del juego
    if (!variable_global_exists("tiempo_inicio_juego")) {
        global.tiempo_inicio_juego = current_time;
    }
}

if (room == Nivel2) {
    global.elementos_restantes = 10;
    global.nivel = 2;
    global.nivel_actual = 2;
}

if (room == Nivel3) {
    global.elementos_restantes = 10;
    global.nivel = 3;
    global.nivel_actual = 3;
}

// Solo se inicializan si aún no existen
if (!variable_global_exists("vidas")) {
    global.vidas = 3;
    global.vidas_restantes = 3;
}
if (!variable_global_exists("tiempo")) {
    global.tiempo = 0;
}

// Variables de control de interfaz
pasando_nivel = false;
mensaje_nivel_completado = false;
tiempo_mensaje = 0;

// ID del jugador
if (!variable_global_exists("jugador_id")) {
    global.jugador_id = "Jugador_001";
}


show_debug_message("Ruta del sandbox: " + working_directory);
