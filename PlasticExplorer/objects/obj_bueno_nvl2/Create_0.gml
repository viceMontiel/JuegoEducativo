
// Velocidad de rotación aleatoria entre -5 y 5 grados por frame
rotacion_angular = random_range(-5, 5);

fall_speed = random_range(2, 4); // Aumenta la velocidad


// Definir una lista de sprites posibles
var sprites_buenos = [
    sprite_bueno1_nvl2,
	sprite_bueno2_nvl2,
	sprite_bueno3_nvl2,
	sprite_bueno4_nvl2
];

// Elegir uno aleatoriamente
sprite_index = sprites_buenos[irandom(array_length(sprites_buenos) - 1)];