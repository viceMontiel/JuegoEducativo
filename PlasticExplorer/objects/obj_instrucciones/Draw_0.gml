draw_set_font(fnt_instrucciones);
draw_set_color(c_black);

var posX = 350;
var posY = 30;
var esp = 22;

draw_text(posX, posY + esp * 0, "¡Bienvenido a PlasticExplorer!");
draw_text(posX, posY + esp * 1, "Embárcate en una aventura para aprender a reciclar"); 
draw_text(posX, posY + esp * 2, "correctamente mientras evitas errores comunes.");
draw_text(posX, posY + esp * 3, "Instrucciones del juego:");
draw_text(posX, posY + esp * 4, "En cada nivel caerán distintos tipos de objetos.");
draw_text(posX, posY + esp * 5, "Solo debes recoger los plásticos reciclables correctos:");
draw_text(posX, posY + esp * 6, "Nivel 1: Recoge objetos de PET 1");
draw_text(posX, posY + esp * 7, "Nivel 2: Recoge objetos de PET 2");
draw_text(posX, posY + esp * 8, "Nivel 3: Recoge objetos de PET 1, PET 2 y PET 5");
draw_text(posX, posY + esp * 9, "Si recoges objetos que no corresponden al nivel, perderás vidas.");
draw_text(posX, posY + esp * 11, "Ejemplos por nivel:");
draw_text(posX, posY + esp * 12, "Nivel 1: Recoge PET 1 (Ejemplo: Botellas de plastico o pocillos de plastico).");
draw_text(posX, posY + esp * 13, "Evita:");
draw_text(posX, posY + esp * 14, "- Botellas PET 1 con agua (no reciclables si contienen agua)");
draw_text(posX, posY + esp * 15, "- Botellas de vidrio o de otros materiales");
draw_text(posX, posY + esp * 16, "Nivel 2: Recoge PET 2 (Ejemplo: Tapas de botella o botellas de detergente).");
draw_text(posX, posY + esp * 17, "Evita:");
draw_text(posX, posY + esp * 18, "- Envases de PET 1, PET 5 u otros plásticos");
draw_text(posX, posY + esp * 19, "- Envases con comida o líquidos dentro");
draw_text(posX, posY + esp * 20, "Nivel 3: Recoge PET 1, PET 2 y PET 5 (Ejemplo: Ensave de mantequilla o yogur).");
draw_text(posX, posY + esp * 21, "Evita:");
draw_text(posX, posY + esp * 22, "- Objetos de otros plásticos (no PET)");
draw_text(posX, posY + esp * 23, "- Botellas de PET 1 con agua u otro contenido");
draw_text(posX, posY + esp * 24, "Los objetos solo los puedes tomar por la parte superior del basurero");
draw_text(posX, posY + esp * 25, "Muévete usando A y D");
draw_text(posX, posY + esp * 27, "Presiona CONTINUAR para comenzar");

