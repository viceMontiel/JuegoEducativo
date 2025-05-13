y += fall_speed;// Hace que la gota caiga verticalmente
// Si la gota sale de la pantalla, se destruye
if (y > room_height) {
    instance_destroy();
}