if (keyboard_check_pressed(ord("R"))) {
    global.vidas = 3;
    global.tiempo = 0;
    global.tiempo_total = 0;
    global.nivel = 1;
    
    room_goto(rm_inicio); // o directamente rm_nivel1 si no tienes pantalla de explicación

}

