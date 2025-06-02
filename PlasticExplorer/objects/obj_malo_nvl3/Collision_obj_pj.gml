// Verificar si el objeto malo está tocando la parte superior del jugador
if (bbox_bottom <= other.y + 5) {
    var id_malo = audio_play_sound(Snd_malo, 1, false);
    audio_sound_gain(id_malo, 0.1, 0); 
    global.vidas -= 1; // Restamos una vida al jugador
    instance_destroy(); // Destruir el objeto malo
	
	// Registrar en el log
    var tipoObjeto = sprite_get_name(sprite_index);  // Obtener el tipo según el sprite actual
    var correcto = false;  // Este es un objeto "bueno"
    
    scr_log(tipoObjeto, correcto);
}

