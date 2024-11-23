Algoritmo Mama_Dino_s_Rescue
	Definir i, j, respuestaCorrecta, respuestaUsuario Como Entero
	Definir posicionDino, anchoPantalla, numeroAleatorio Como Entero
	Definir pregunta Como Cadena
	Definir nIniciales, n Como Entero
	Definir posicionMeteoro Como Entero

	// Definiciones de las inicializaciones
	posicionMeteoro = 1
	anchoPantalla = 220
	posicionDino = 1
	posicionHuevo = anchoPantalla - 30
	nIniciales = 3
	n = nIniciales

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

	// Definicion del dinosaurio invertido 
	Dimension dinoReverse[14]
	dinoReverse[1] = "                                           *+++ *+=- =*+="
	dinoReverse[2] = "                         -+*=*          ++           ++"
	dinoReverse[3] = "                     += ~   *+         =+=         ++*="
	dinoReverse[4] = "                    *+  X    =+=     =+=        +++"
	dinoReverse[5] = "                  ++         -=+    *+         ++"
	dinoReverse[6] = "                 ~**++*+*=   ++=+*+++        =*="
	dinoReverse[7] = "              =++=+++=-     -*++= =++*     ++"
	dinoReverse[8] = "           =*+       :+=++=.     =++     ++"
	dinoReverse[9] = "       -*+              ++  ++    =*+   +="
	dinoReverse[10] = "    +*-                    +++      -+*+-"
	dinoReverse[11] = "   =++       -+*+++*+*    ++      +*=*+="
	dinoReverse[12] = " -*=     :+*+=            **:  +*  ==++*"
	dinoReverse[13] = "==+=   +++++*+                 +*+*=  *+="
	dinoReverse[14] = "-+++                             +*+=  *+="

	// Definición del huevo
	Dimension huevo[6]
	huevo[1] = "    ===="
	huevo[2] = "  +=-----="
	huevo[3] = " +=---::--="
	huevo[4] = "++=---:::--="
	huevo[5] = "*++==-----=+"
	huevo[6] = "  **++=+++*"

	// Definicion del meteoro
	Dimension meteoro[15]
	meteoro[1] = "                                      **+=+*:." 
	meteoro[2] = "                            .  +++=====-=+*=..."
	meteoro[3] = "                      .. .-+*+====-----=+**:."
	meteoro[4] = "                     .:+=**+==-----::-==+**.."
	meteoro[5] = "                ..:+**++==--:::::::--==*+."
	meteoro[6] = "            .:*===---=========--:---=+**-"
	meteoro[7] = "            .*+==--+=        ====-:-=+***."
	meteoro[8] = "          ..+=---=+           ===---=+***"
	meteoro[9] = "         .*==----             ===---=+**"
	meteoro[10] = "        .+++=--=              ==--==**+." 
	meteoro[11] = "        :+=-==+              =-==*+:."
	meteoro[12] = "        .+=-=+==           ===-=+**:"
	meteoro[13] = "         .=-=+==========++==-==**-."
	meteoro[14] = "             =+==========-==+*"

	// Definicion del meteoro V. Pequeño
	Dimension meteoroSmall[9]
	meteoroSmall[1] = "                 .:=+*:." 
	meteoroSmall[2] = "          ..::====-=+*.."
	meteoroSmall[3] = "   ...-+*+====++++++=+*:."
	meteoroSmall[4] = "  .:+==--:: **+=+*:.:-=+.."
	meteoroSmall[5] = "  .:+=**         *-==+**.."
	meteoroSmall[6] = ":+**++=           ---==*+."
	meteoroSmall[7] = " .:==---         --=+*+."
	meteoroSmall[8] = "  -=====**-----***=-=+*"
	meteoroSmall[9] = "   .==========-==+*=.."

	// Definicion de la explosion
	Dimension explosion[34]
	explosion[1] = "                          ##%###%%#    %%#"
	explosion[2] = "                      ##%%%#==+=+*#%%%%#%%###"
	explosion[3] = "                      %%##*==-=====++++++**%%#+  *+"
	explosion[4] = "        *+***  ###*##*%#+==----:--:======+*#%##%%######%*++***"
	explosion[5] = "     #*+++==+++=-::-+#++==-====:-=--+======+%%%%*+===--::::-=**"
	explosion[6] = "   ###*=-:-::-----.---*++======----:======++*%%*+=---::::..:=++#*"
	explosion[7] = "   ##*+----:--:-=-::--+++=-==:::..::......-+++=----::::..::::-+##"
	explosion[8] = "   %*+=-====-----=::+**=-==-=--:::........:-++=-:::::::------==+**"
	explosion[9] = " +%#**+++===-::--:--***++==-:--==.......::-::=+#*:::-:----=====++**"
	explosion[10] = " #%%%%++=======-::-*##*+=-:-=-.--:..--:======+***=::--------=++%%#*"
	explosion[11] = "   %%#++++=------==*#*++*+-==--===:-=====+++***+=====----====++*%"
	explosion[12] = "   #%##**+===++++++#####**+++============+**#*+++++++===-==+**##%"
	explosion[13] = "  ###%##***=++++++++++#####***++++*##**%##%%%###****+++++**+*##%##"
	explosion[14] = "   +*#*########*#%%%%%%%%%######*****%%%**#%%%#%%%%###########%##"
	explosion[15] = "    #####*#%%%%%%##%%%%%##%%%%%##%%%%%+#++#%%%%%%##%##%%%##%%###+"
	explosion[16] = "      ######**%%%%%%%%%%%%%%*=##+:....-+-*%%###%%%%%%%%%%#****"
	explosion[17] = "           +**+*+*+=+*+#%%%%*==-...::.-+=%%#**#%%%###**"
	explosion[18] = "         +**###*+=++*######%#==-...-::+==++*****#*###"
	explosion[19] = "      =-+#+               %%%+=-...-::*+%%%        -+*#++*-"
	explosion[20] = "          =**===+=:-      %%%*+::::=--%*%%           *###**+"
	explosion[21] = "                           %##*--::=-=%%%%    .++*+==+"
	explosion[22] = "                        -++%**+-::::-=%%%::=*."
	explosion[23] = "                   -==+    %%%*==--+=+%%%    :"
	explosion[24] = "                         -*#%%#=+==+*+%%%*  +"
	explosion[25] = "                       *##+=+#*+---=*+%%###"
	explosion[26] = "                   *-++*#+==#%++++++*+%#=*#*##**-"
	explosion[27] = "                       *#==*%#+******+#%%%%%%##"
	explosion[28] = "                   **+=##%%###*=-==-:-=#**+*+++*+"
	explosion[29] = "    =+     ==    **---+=+*#**---:.....:-*++*++++*#*:"
	explosion[30] = "     *#     -  ***--:..:-**+=-::::..:---=#=--==****   #* :   *+"
	explosion[31] = "        +    ++*++:...::-*+=*-:.::::----*=::....=**=+=*+   ##*   ."
	explosion[32] = "-+++ = =****==-**==-----=**===+-:::-:..-+=-:----==*===+*+++****"
	explosion[33] = "   =*##+++**+++*#*+====++*#*+==+===-:-==**=======**+++++*+***+****="
	explosion[34] = "      -==+***###*###*######**+++==-=++***#***+*##**###**###**"

	// Preguntas y respuestas
	Dimension preguntas[10]
	preguntas[1] = "¿CUÁNTO ES 3 + 2?"
	preguntas[2] = "¿CUÁNTO ES 8 + 1?"
	preguntas[3] = "¿CUÁNTO ES 4 + 3?"
	preguntas[4] = "¿CUÁNTO ES 6 + 4?"
	preguntas[5] = "¿CUÁNTO ES 7 + 5?"
	preguntas[6] = "¿CUÁNTO ES 12 + 15?"
	preguntas[7] = "¿CUÁNTO ES 23 + 19?"
	preguntas[8] = "¿CUÁNTO ES 45 + 33?"
	preguntas[9] = "¿CUÁNTO ES 67 + 28?"
	preguntas[10] = "¿CUÁNTO ES 128 + 112?"

	Dimension respuestas[10]
	respuestas[1] = 5
	respuestas[2] = 9
	respuestas[3] = 7
	respuestas[4] = 10
	respuestas[5] = 12
	respuestas[6] = 27
	respuestas[7] = 42
	respuestas[8] = 78
	respuestas[9] = 95
	respuestas[10] = 240

	// Ciclo principal del juego
	Mientras Verdadero Hacer
		Limpiar Pantalla
	
		// Mostrar el meteoro estático en la esquina superior derecha
		Para i = 1 Hasta 9 Hacer
	        	Para j = 1 Hasta anchoPantalla - 30 Hacer
				Escribir Sin Saltar " "
			FinPara
			Imprimir meteoroSmall[i]
		FinPara
	
		// Mostrar el dinosaurio moviéndose hacia la derecha con espaciado inicial
		Para i = 1 Hasta 14 Hacer
			Para j = 1 Hasta posicionDino Hacer
				Escribir Sin Saltar " "
			FinPara
			Imprimir dino[i]
		FinPara
	
		// Mostrar el huevo estático en el extremo derecho
		Para i = 1 Hasta 6 Hacer
			Para j = 1 Hasta posicionHuevo Hacer
				Escribir Sin Saltar " "
			FinPara
			Imprimir huevo[i]
		FinPara
	
		// Mostrar el suelo
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
		Imprimir "*                                      ¡SIN DEJAR QUE EL METEORO CAIGA!                                        *"
		Imprimir "*                                            INTENTOS RESTANTES: ", n, "                                             *"
		Imprimir "****************************************************************************************************************"
		
		// Seleccionar una pregunta al azar
		numeroAleatorio = Azar(10) + 1
		Si numeroAleatorio < 1 O numeroAleatorio > 10 Entonces
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
			Escribir "RESPUESTA CORRECTA, SIGUES ADELANTE"
			Esperar 2 Segundos
	
			// Vista de victoria
			Si posicionDino >= posicionHuevo - 50 Entonces
				Limpiar Pantalla
				Imprimir "       ______ ______ _      _____ _____ _____ _____          _____  ______  _____    _"
				Imprimir " (_)  |  ____|  ____| |    |_   _/ ____|_   _|  __ \   /\   |  __ \|  ____|/ ____|  | |"
				Imprimir " | |  | |__  | |__  | |      | || |      | | | |  | | /  \  | |  | | |__  | (___    | |"
				Imprimir " | |  |  __| |  __| | |      | || |      | | | |  | |/ /\ \ | |  | |  __|  \___ \   | |"
				Imprimir " | |  | |    | |____| |____ _| || |____ _| |_| |__| / ____ \| |__| | |____ ____) |  |_|"
				Imprimir " |_|  |_|    |______|______|_____\_____|_____|_____/_/    \_\_____/|______|_____/   ( )"
				Imprimir "      ___   _   _ __   ___   ___ _____ ___   ___ _      _  _ _   _ _____   _____"
				Imprimir "     / __| /_\ | |\ \ / /_\ / __|_   _| __| | __| |    | || | | | | __\ \ / / _ \"
				Imprimir "     \__ \/ _ \| |_\ V / _ \\__ \ | | | _|  | _|| |__  | __ | |_| | _| \ V / (_) |"
				Imprimir "     |___/_/ \_\____\_/_/ \_\___/ |_| |___| |___|____| |_||_|\___/|___| \_/ \___/"
				Imprimir "***************************************************************************************"
				Imprimir "*                    PRESIONA ALGUNA TECLA PARA REINICIAR EL JUEGO                    *"
				Imprimir "***************************************************************************************"
	
				Esperar Tecla
	
				posicionDino = 1
				n = nIniciales
				posicionMeteoro = 0
			FinSi
		Sino
			// Decrementar el número de intentos solo cuando la respuesta es incorrecta
			n = n - 1
	 
			// Retroceder la posición del dinosaurio
			Si posicionDino - 30 >= 1 Entonces
				posicionDino = posicionDino - 30 
			Sino
				posicionDino = 1
			FinSi
	
			Imprimir "RESPUESTA INCORRECTA, TE ALEJAS DEL HUEVO"
			Esperar 2 Segundos
	
			// Verificar si se agotaron los intentos
			Si n <= 0 Entonces
			// Primera escena: meteoroSmall con dino y huevo visibles
				Limpiar Pantalla
	
				// Mostrar meteoroSmall en su posición original
				Para i = 1 Hasta 9 Hacer
					Para j = 1 Hasta anchoPantalla - 30 Hacer
						Escribir Sin Saltar " "
					FinPara
					Escribir meteoroSmall[i]
				FinPara
	
				// Mostrar el dinosaurio en su posición actual
				Para i = 1 Hasta 14 Hacer
					Para j = 1 Hasta posicionDino Hacer
						Escribir Sin Saltar " "
					FinPara
					Escribir dino[i]
				FinPara
	
				// Mostrar el huevo en su posición
				Para i = 1 Hasta 6 Hacer
					Para j = 1 Hasta posicionHuevo Hacer
						Escribir Sin Saltar " "
					FinPara
					Escribir huevo[i]
				FinPara
	
				// Mostrar el suelo
				Para i = 1 Hasta anchoPantalla Hacer
					Escribir Sin Saltar "_"
				FinPara
				Escribir ""
				Esperar 1.5 Segundos
	
				// Segunda escena: dino, meteoro grande y huevo
				Limpiar Pantalla
	
				// Mostrar el dinosaurio primero
				Para i = 1 Hasta 14 Hacer
					Para j = 1 Hasta posicionDino Hacer
						Escribir Sin Saltar " "
					FinPara
					Escribir dinoReverse[i]
				FinPara
	
				// Calcular posición centrada para el meteoro grande
				posicionCentrada = trunc((anchoPantalla - 30) / 2)
	
				// Mostrar meteoro grande cerca del suelo
				Para i = 1 Hasta 14 Hacer
					Para j = 1 Hasta posicionCentrada Hacer
						Escribir Sin Saltar " "
					FinPara
					Escribir meteoro[i]
				FinPara
	
				// Mostrar el huevo al final
				Para i = 1 Hasta 6 Hacer
					Para j = 1 Hasta posicionHuevo Hacer
						Escribir Sin Saltar " "
					FinPara
					Escribir huevo[i]
				FinPara
	
				// Mostrar el suelo
				Para i = 1 Hasta anchoPantalla Hacer
					Escribir Sin Saltar "_"
				FinPara
				Escribir ""
				Esperar 1.5 Segundos
	
				// Tercera escena: Explosión
				Limpiar Pantalla
	
				// Mostrar la explosión manteniendo la alineación horizontal
				Para i = 1 Hasta 34 Hacer
					// Calculo para saber los espacios necesarios para centrar la explosión
					Para j = 1 Hasta posicionCentrada - 15 Hacer
						Escribir Sin Saltar " "
					FinPara
					Escribir explosion[i]
				FinPara
	
				// Mostrar el suelo
				Para i = 1 Hasta anchoPantalla Hacer
					Escribir Sin Saltar "_"
				FinPara
				Escribir ""
				Esperar 3 Segundos
	
				// Cuarta escena: Game Over
				Limpiar Pantalla
				Imprimir "   _____          __  __ ______    ______      ________ _____  "
				Imprimir "  / ____|   /\   |  \/  |  ____|  / __ \ \    / /  ____|  __ \ "
				Imprimir " | |  __   /  \  | \  / | |__    | |  | \ \  / /| |__  | |__) |"
				Imprimir " | | |_ | / /\ \ | |\/| |  __|   | |  | |\ \/ / |  __| |  _  / "
				Imprimir " | |__| |/ ____ \| |  | | |____  | |__| | \  /  | |____| | \ \ "
				Imprimir "  \_____/_/    \_\_|  |_|______|  \____/   \/   |______|_|  \_\" 
				Imprimir "  ___ _      __  __ ___ _____ ___ ___  ___  ___     ___   ___   _____"
				Imprimir " | __| |    |  \/  | __|_   _| __/ _ \| _ \/ _ \   / __| /_\ \ / / _ \"
				Imprimir " | _|| |__  | |\/| | _|  | | | _| (_) |   / (_) | | (__ / _ \ V / (_) |"
				Imprimir " |___|____| |_|  |_|___| |_| |___\___/|_|_\\___/   \___/_/ \_|_| \___/"
				Imprimir "************************************************************************"
				Imprimir "*            ¡OH NO! ¡EL METEORO HA CAÍDO! INTENTA DE NUEVO            *"
				Imprimir "************************************************************************"
	
				Esperar Tecla
				posicionDino = 1
				n = nIniciales
				posicionMeteoro = 0

			FinSi
		FinSi
	FinMientras
FinAlgoritmo
