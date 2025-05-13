
// Solo se reinician los elementos cuando empieza un nivel específico
if (room == Nivel1) {
    global.elementos_restantes = 10; // o el número que uses en Nivel 1
    global.nivel = 1;
}

if (room == Nivel2) {
    global.elementos_restantes = 10; // o el número de elementos en Nivel 2
    global.nivel = 2;
}
if (room == Nivel3) {
    global.elementos_restantes = 10; // o el número de elementos en Nivel 2
    global.nivel = 3;
}

// Solo se inicializan si aún no existen (evita reiniciar vidas o tiempo)
if (!variable_global_exists("vidas")) {
    global.vidas = 3;
}
if (!variable_global_exists("tiempo")) {
    global.tiempo = 0;
}

pasando_nivel = false;
mensaje_nivel_completado = false;
tiempo_mensaje = 0;
