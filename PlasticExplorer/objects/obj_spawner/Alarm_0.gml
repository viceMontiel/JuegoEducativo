// Posición X aleatoria dentro del ancho de la room
var pos_x = random_range(0, room_width - sprite_width);

// Elige aleatoriamente el tipo de objeto (reemplaza por tus propios objetos)
var objetos = [obj_bueno, obj_malo];
var indice = irandom(array_length(objetos) - 1);
instance_create_layer(random_range(sprite_width / 2, room_width - sprite_width / 2), -sprite_height, "Instances_1", obj_bueno);
instance_create_layer(random_range(sprite_width / 2, room_width - sprite_width / 2), -sprite_height, "Instances_1", obj_malo);
alarm[0] = random_range(80, 140); // Nuevo intervalo aleatorio



