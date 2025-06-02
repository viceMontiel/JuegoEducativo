/// PARA ENCONTRAR ARCHIVO HACER WINDOWS+R Y ESCRIBIR %localappdata%
function scr_log(tipoObjeto, correcto) {
    /// @function Script_log(tipoObjeto, correcto)
    /// Guarda un evento en el archivo de log
    /// @param tipoObjeto (ej: "PET1", "vidrio")
    /// @param correcto (true/false)


    var idJugador = global.idJugador; // Puede venir de una variable más adelante
    var respuestaJugador = "atrapado";
    var nivel = global.nivel;
    var vidas_restantes = global.vidas;
	var esCorrecto = ""
	
	if(correcto == 0)
		esCorrecto = "false"
	else
		esCorrecto = "true"

    // Tiempo desde el inicio del juego (en segundos)
    var tiempo_juego = (current_time - global.tiempo_inicio_juego) / 1000;

    // Timestamp actual en formato legible
    var timestamp = date_time_string(date_current_datetime());

   
	// Ruta segura dentro del sandbox
    var archivo = working_directory + "log_plastic_explorer.csv";

	

	if (!file_exists(archivo)) {
	    var f_init = file_text_open_write(archivo);
	    file_text_write_string(f_init, "timestamp,idJugador,objeto,respuestaJugador,esCorrecto,nivel,vidas_restantes,tiempo_juego\n");
	    file_text_close(f_init);
	    show_debug_message("Archivo de log creado: " + archivo);
	} else {
	    show_debug_message("Archivo de log ya existe: " + archivo);
	}


    // Construcción de la línea del log (formato CSV)
    var linea = string(timestamp) + "," +
                idJugador + "," +
                tipoObjeto + "," +
                respuestaJugador + "," +
                string(esCorrecto) + "," +
                string(nivel) + "," +
                string(vidas_restantes) + "," +
                string(tiempo_juego) + "\n";

    // Guardar en el archivo
    var f = file_text_open_append(archivo);
    file_text_write_string(f, linea);
    file_text_close(f);
	show_debug_message("Archivo de log actualizado: " + archivo);
}