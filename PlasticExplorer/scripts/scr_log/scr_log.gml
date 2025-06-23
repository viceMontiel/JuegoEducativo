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

    // 🔄 Enviar al Google Sheets (formato JSON)
    var log_json = json_stringify({
        idJugador: idJugador,
        objeto: tipoObjeto,
        respuestaJugador: respuestaJugador,
        esCorrecto: (correcto ? true : false),
        nivel: nivel,
        vidas_restantes: vidas_restantes,
        tiempo_juego: tiempo_juego
    });

    // URL de tu Google Apps Script (reemplaza con la real)
    var url = "https://script.google.com/macros/s/AKfycbxkuSdszeIq2lndY41qqDmYkMID3BjinQS5LdUywe9u2r76qyI644tq_JYJnPO3mLF1/exec";

    http_post_string(url, log_json);
}