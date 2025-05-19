// Rotar el sprite mientras cae
image_angle += rotacion_angular;
// Establecer un margen en base al tamaño del sprite
var margen = max(sprite_width, sprite_height) * 0.5;

// Limitar posición horizontal (x) para que no se salga de la room
if (x < margen) {
    x = margen;
}
if (x > room_width - margen) {
    x = room_width - margen;
}

y += fall_speed;// Hace que la gota caiga verticalmente
// Si la gota sale de la pantalla, se destruye
if (y > room_height) {
    instance_destroy();
}