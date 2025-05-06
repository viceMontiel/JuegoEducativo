//x = random_range(sprite_width / 2, room_width - sprite_width / 2);
//y = -sprite_height; // para que aparezca justo fuera de la parte superior

fall_speed = random_range(2, 4); // Aumenta la velocidad


// Definir una lista de sprites posibles
var sprites_buenos = [
    sprite_bueno1_nvl1,
	sprite_bueno2_nvl1,
	sprite_bueno3_nvl1,
	sprite_bueno4_nvl1
];

// Elegir uno aleatoriamente
sprite_index = sprites_buenos[irandom(array_length(sprites_buenos) - 1)];