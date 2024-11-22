Algoritmo Mama_Dino_Rescue
    Definir i, j, respuestaCorrecta, respuestaUsuario Como Entero
    Definir posicionDino, anchoPantalla, numeroAleatorio Como Entero
    Definir pregunta Como Cadena
    
    // Mostrar mensaje de bienvenida
    Limpiar Pantalla
    Imprimir "  ____ _____ ______ _   ___      ________ _   _ _____ _____   ____  "
    Imprimir " |  _ \_   _|  ____| \ | \ \    / /  ____| \ | |_   _|  __ \ / __ \ "
    Imprimir " | |_) || | | |__  |  \| |\ \  / /| |__  |  \| | | | | |  | | |  | |"
    Imprimir " |  _ < | | |  __| | . ` | \ \/ / |  __| | . ` | | | | |  | | |  | |"
    Imprimir " | |_) || |_| |____| |\  |  \  /  | |____| |\  |_| |_| |__| | |__| |"
    Imprimir " |____/_____|______|_| \_|   \/   |______|_| \_|_____|_____/ \____/ "
    Imprimir ""
    Imprimir "********************************************************************"
    Imprimir "*            PRESIONA ALGUNA TECLA PARA EMPEZAR A JUGAR            *"
    Imprimir "********************************************************************"
    Esperar Tecla
	
    anchoPantalla = 220
    posicion_dino = 1
    
    // Definición del dinosaurio
    Dimension dino[14]
    dino[1] = "=+*- =+*++ +++*"
    dino[2] = "    ++           ++        *=+*+-"
    dino[3] = "     =*++         =+=       +*   ~ =+"
    dino[4] = "        +++        =+=    -+=    O  +*"
    dino[5] = "           ++        +*   +=-         ++"
    dino[6] = "            =*=       +++*+=+   =*+*++**~"
    dino[7] = "              ++    *++= =++*-     -=+++=++="
    dino[8] = "               ++     ++=     .=+++=:       +*="
    dino[9] = "                +=   +*=    ++  ++              +*-"
    dino[10] = "                 *-+-      +++                    -*+"
    dino[11] = "                 =*=*+      ++    +*+*+++*+-       ++="
    dino[12] = "                *++==  *+  :**            =-+*+:     =*-"
    dino[13] = "                +=*  =*+*+                   +*++++   =+="
    dino[14] = "               *=+*  =*+                             +++-"

    // Definición del huevo
    Dimension huevo[6]
    huevo[1] = "    ===="
    huevo[2] = "  +=-----="
    huevo[3] = " +=---::--="
    huevo[4] = "++=---:::--="
    huevo[5] = "*++==-----=+"
    huevo[6] = "  **++=+++*"

	Dimension meteoro[18]
	meteoro[1] = "             :::+*-.."
	meteoro[2] = "           ...-**+++."
	meteoro[3] = "          ..-+*+**+=+*:."
	meteoro[4] = "         .+*+++=====-=+*=..."
	meteoro[5] = "      .. .-+*+====-----=+**:."
	meteoro[6] = "     .:+=**+==-----::-==+**.."
	meteoro[7] = "    ..:+**++==--:::::::--==*+."
	meteoro[8] = "    .:++===------------::--=+*"
	meteoro[9] = "    .:*===---=========--:---=+"
	meteoro[10] = " .*+==--+==           -:-=+***"
	meteoro[11] = "..+=---=+-             ---=+**"
	meteoro[12] = "  .*==----              -=---=+"
	meteoro[13] = " .+++=--=               ==--==*" 
	meteoro[14] = "   :+=-==+             ==-==*+:"
	meteoro[15] = "   .+=-=+==          ===-=+**:"
	meteoro[16] = "    .=-=+==========++==-==**-."
	meteoro[17] = "     :=-=+==========-==+*+-."
	meteoro[18] = "      .==--======--=+**-:."
    
    // Preguntas y respuestas
    Dimension preguntas[5]
    preguntas[1] = "¿Cuánto es 3 + 2?"
    preguntas[2] = "¿Cuánto es 5 - 1?"
    preguntas[3] = "¿Cuánto es 4 + 3?"
    preguntas[4] = "¿Cuánto es 7 - 2?"
    preguntas[5] = "¿Cuánto es 6 + 1?"
    
    Dimension respuestas[5]
    respuestas[1] = 5
    respuestas[2] = 4
    respuestas[3] = 7
    respuestas[4] = 5
    respuestas[5] = 7
    
    // Ciclo principal del juego
    Mientras Verdadero Hacer
        Limpiar Pantalla
        
        // Espaciado superior
        //Para i = 1 Hasta 5 Hacer
        //    Escribir ""
        //FinPara
        
        // Mostrar el dinosaurio moviéndose hacia la derecha
        Para i = 1 Hasta 15 Hacer
            Para j = 1 Hasta posicionDino Hacer
                Escribir Sin Saltar " "
            FinPara
            Imprimir dino[i]
        FinPara
        
        // Mostrar el huevo estático en el extremo derecho
        Para i = 1 Hasta 8 Hacer
            Para j = 1 Hasta anchoPantalla - 15 Hacer
                Escribir Sin Saltar " "
            FinPara
            Imprimir huevo[i]
        FinPara
        
        // Mostrar el suelo
        Escribir ""
        Para i = 1 Hasta anchoPantalla Hacer
            Escribir Sin Saltar "_"
        FinPara
        Escribir ""
        
        // Mostrar cuadro de pregunta
        Imprimir ""
        Imprimir "    _    _____  ____  ______  ___         ___         __  ______    __  ______       ____  _____   ______     __"
        Imprimir "   (_)  /   \ \/ / / / / __ \/   |       /   |       /  |/  /   |  /  |/  /   |     / __ \/  _/ | / / __ \   / /"
        Imprimir "  / /  / /| |\  / / / / / / / /| |      / /| |      / /|_/ / /| | / /|_/ / /| |    / / / // //  |/ / / / /  / /"
        Imprimir " / /  / ___ |/ / /_/ / /_/ / ___ |     / ___ |     / /  / / ___ |/ /  / / ___ |   / /_/ // // /|  / /_/ /  /_/"
        Imprimir "/_/  /_/  |_/_/\____/_____/_/  |_|    /_/  |_|    /_/  /_/_/  |_/_/  /_/_/  |_|  /_____/___/_/ |_/\____/  (_)"
        Imprimir ""
        Imprimir "****************************************************************************************************************"
        Imprimir "*                     RESPONDE LAS PREGUNTAS Y AYUDA A MAMA DINO A RESCATAR SU HUEVO CAÍDO                     *"
        Imprimir "*                                       ¡ANTES DE QUE EL METEORO CAIGA!                                        *"
        Imprimir "****************************************************************************************************************"
		
        // Seleccionar una pregunta al azar
        numeroAleatorio = Azar(5) + 1
        // Validar que el índice esté en el rango correcto
        Si numeroAleatorio < 1 O numeroAleatorio > 5 Entonces
            // Ajustar al primer índice como valor de respaldo
            numeroAleatorio = 1
        FinSi
        
        pregunta = preguntas[numeroAleatorio]
        respuestaCorrecta = respuestas[numeroAleatorio]
        
        Escribir pregunta
        Leer respuestaUsuario
        
        // Verificar si la respuesta es correcta
        Si respuestaUsuario = respuestaCorrecta Entonces
            // Avanzar la posición del dinosaurio
            posicionDino = posicionDino + 15
            Escribir "Respuesta correcta, sigues adelante"
            Esperar 1 Segundo
            // Condicional para la vista de victoria si el dinosaurio llega el huevo
            Si posicionDino > anchoPantalla - 30 Entonces
                Limpiar Pantalla
                Imprimir "       ______ ______ _      _____ _____ _____ _____          _____  ______  _____    _"
                Imprimir " (_)  |  ____|  ____| |    |_   _/ ____|_   _|  __ \   /\   |  __ \|  ____|/ ____|  | |"
                Imprimir " | |  | |__  | |__  | |      | || |      | | | |  | | /  \  | |  | | |__  | (___    | |"
                Imprimir " | |  |  __| |  __| | |      | || |      | | | |  | |/ /\ \ | |  | |  __|  \___ \   | |"
                Imprimir " | |  | |    | |____| |____ _| || |____ _| |_| |__| / ____ \| |__| | |____ ____) |  |_|"
                Imprimir " |_|  |_|    |______|______|_____\_____|_____|_____/_/    \_\_____/|______|_____/   ( )"
                Imprimir "***************************************************************************************"
                Imprimir "*                    PRESIONA ALGUNA TECLA PARA REINICIAR EL JUEGO                    *"
                Imprimir "***************************************************************************************"
                Esperar Tecla
                // Reiniciar la posición del dinosaurio
                posicionDino = 1
            FinSi
        Sino
            // Retroceder la posición del dinosaurio, asegurándonos que no retroceda más allá de la posición 1
            Si posicionDino - 10 >= 1 Entonces
                // Retroceder la posición del dinosaurio
                posicionDino = posicionDino - 15  
            Sino
                // Limitar al mínimo (no puede retroceder más allá de la primera posición)
                posicionDino = 1
            FinSi
            Imprimir "Respuesta incorrecta, intenta de nuevo."
            Esperar 1 Segundo
        FinSi
    FinMientras
FinAlgoritmo
