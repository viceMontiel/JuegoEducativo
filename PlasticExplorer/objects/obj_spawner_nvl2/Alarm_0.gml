// Número de objetos a generar por ciclo
var cantidad = 3; // Puedes ajustar este número según lo necesites

for (var i = 0; i < cantidad; i++) {
    // Posición X aleatoria dentro de los límites de la room
    var x_pos = random_range(sprite_width / 2, room_width - sprite_width / 2);
    
    // Elegir aleatoriamente un objeto bueno o malo
    var objetos = [obj_bueno_nvl2, obj_malo_nvl2];
    var indice = irandom(array_length(objetos) - 1);
    
    instance_create_layer(x_pos, -sprite_height, "Instances", objetos[indice]);
}

// Reprogramar la alarma con un intervalo aleatorio (menor = más objetos por minuto)
alarm[0] = random_range(80, 140); // Ajusta este valor para más o menos frecuencia