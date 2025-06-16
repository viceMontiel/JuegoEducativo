// Velocidad de rotación aleatoria entre -5 y 5 grados por frame
rotacion_angular = random_range(-5, 5);

fall_speed = random_range(2, 4); // Aumenta la velocidad
// Mucho más lento

// Definir una lista de sprites posibles
var sprites_malos = [
    sprite_bueno2_nvl1,
	sprite_malo2_nvl2,
	sprite_bueno4_nvl3,
	sprite_malo4_nvl2
];

// Elegir uno aleatoriamente
sprite_index = sprites_malos[irandom(array_length(sprites_malos) - 1)];

