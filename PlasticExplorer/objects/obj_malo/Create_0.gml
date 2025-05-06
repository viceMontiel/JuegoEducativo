//x = random_range(sprite_width / 2, room_width - sprite_width / 2);
//y = -sprite_height; // para que aparezca justo fuera de la parte superior


fall_speed = random_range(2, 4); // Aumenta la velocidad
// Mucho más lento

// Definir una lista de sprites posibles
var sprites_malos = [
    sprite_malo1_nvl1,
	sprite_malo2_nvl1
];

// Elegir uno aleatoriamente
sprite_index = sprites_malos[irandom(array_length(sprites_malos) - 1)];

