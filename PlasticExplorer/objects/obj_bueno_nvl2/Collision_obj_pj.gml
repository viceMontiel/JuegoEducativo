if (bbox_bottom <= other.y + 5) {
    var id_bueno = audio_play_sound(Snd_bueno, 1, false);
    audio_sound_gain(id_bueno, 0.1, 0); 
    global.elementos_restantes -= 1;
    instance_destroy();
	
	// Registrar en el log
    var tipoObjeto = sprite_get_name(sprite_index);  // Obtener el tipo según el sprite actual
    var correcto = true;  // Este es un objeto "bueno"
    
    scr_log(tipoObjeto, correcto);
}

