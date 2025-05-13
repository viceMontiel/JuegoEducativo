// Definir tiempo de espera según la room actual
switch (room) {
    case Nivel1a2:
        tiempo_cambio = room_speed * 5; // 2 segundos de espera
        siguiente_room = rm_explicacionnvl2;
        break;
    case rm_explicacionnvl2:
        tiempo_cambio = room_speed * 10; // 4 segundos para mostrar instrucciones
        siguiente_room = Nivel2;
        break;
    case Nivel2a3:
        tiempo_cambio = room_speed * 5; // 4 segundos para mostrar instrucciones
        siguiente_room = rm_explicacionnvl3;
        break;
    case rm_explicacionnvl3:
        tiempo_cambio = room_speed * 10; // 4 segundos para mostrar instrucciones
        siguiente_room = Nivel3;
        break;
    // Puedes seguir extendiendo para Nivel2a3, etc.
    default:
        tiempo_cambio = room_speed * 2;
        siguiente_room = Nivel1;
}
