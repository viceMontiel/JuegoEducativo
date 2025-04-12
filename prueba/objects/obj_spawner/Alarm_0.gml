// Crear varias gotas por ciclo
for (var i = 0; i < 1; i++) {
    var x_pos = random(room_width);

    if (random(1) < 0.2) {
        // 20% de probabilidad de ser maligna
        instance_create_layer(x_pos, -16, "Instances", obj_bad);
    } else {
        instance_create_layer(x_pos, -16, "Instances", obj_rain);
    }
}

// Vuelve a activar la alarma para seguir generando gotas
alarm[0] = irandom_range(60, 120); // cada 0.16 a 0.5 segundos (ajustable)
