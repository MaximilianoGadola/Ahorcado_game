Algoritmo ahorcados
	Escribir "              =============================="
	Escribir "              =    BIENVENIDO A AHORCADOS  =    "
	Escribir "              =============================="
	Escribir ""
	Escribir "   ========================REGLAS======================="
	Escribir " 1) La palabra debe ser adivinada tal cual es escrita ¡cuidado con las tildes¡"
	Escribir " 2) La primer letra se mostrara todas las veces que salga en la palabra"
	Escribir "                   Ejemplo: palabra:mama -> m_m_"
	Escribir " 3)Solo se permiten usar letras y NO numeros"
	Escribir " "
	Repetir
		Escribir "Ingrese la palabra para comenzar el juego"
		Leer palabraSecreta // Guardamos la palabra que deseamos adivinar
	Hasta Que longitud(palabraSecreta)>0 //controlamos que no nos pase una cadena vacia 
	
	cantidad=Longitud(palabraSecreta) //Guardamos el numero de letras que tiene nuestra palabra 
	Limpiar Pantalla;
	Dimension palabrasSecretas[100] //declaramos el arrelo que va a tener nuestra palabraSecreta
	Dimension palabrasAdivinar[100] //declaramos otro arreglo que iremos comparando con el de la palabra secreta
	Dimension letrasUtilizadas[100] //sirve para mostrar las letras que va eligiendo 
	cantPrimerLetra=0//sirve para saber cuantas veces se repite la primer letra
	Para i<-1 Hasta cantidad Con Paso 1 Hacer //cargamos la palabraSecreta en el arreglo una letra por cada posicion 
		palabrasSecretas[i]=Subcadena(palabraSecreta,i,i) 
		si i=1 Entonces //para que solo se guarde la primera letra en el arreglo que vamos a comparar como ayuda 
			palabrasAdivinar[i]=Subcadena(palabraSecreta,i,i)
		SiNo // buscamos otras letras de la palabra que coincidan con la primera 
			si palabrasSecretas[1]=palabrasSecretas[i] Entonces
				palabrasAdivinar[i]=palabrasSecretas[1]
				cantPrimerLetra=cantPrimerLetra+1 //se cuenta la cantidad de veces que se repite la primera letra en la palabra
			SiNo // los demas se guardaran con un "- "como ocultos
				palabrasAdivinar[i]="_"
			FinSi
		FinSi
	Fin Para
	
	intentos=6 //numeros de intentos que tendra el usuario 
	aciertos=0 +cantPrimerLetra // cantidad de veces que se repita la primer letra+los aciertos del usuario
	cantletras=1
	//comienzo del juego 
	Repetir 
		//se muestra la orca segun la cantidad de intentos que tengas
		Si intentos=6 Entonces
			Escribir " ----------+"
		    Escribir " |        "
			Escribir " |        "
			Escribir " |        "
			Escribir " =    " Sin Saltar
			Para i<-1 Hasta cantidad Con Paso 1 Hacer
				Escribir palabrasAdivinar[i] " "sinsaltar 
			FinPara
			Escribir " "
			Escribir "Letras Utilizadas"
			Para i<-1 hasta cantletras Con Paso 1 Hacer
				Escribir Mayusculas(letrasUtilizadas[i])," " Sin Saltar
			FinPara
			Escribir " " 
		  Escribir "vidas:" intentos
	  SiNo
		  Si intentos=5 Entonces
			  Escribir " ----------+"
			  Escribir " |       (+.+)"
			  Escribir " |         "
			  Escribir " |        "
			  Escribir " =    " Sin Saltar
			  Para i<-1 Hasta cantidad Con Paso 1 Hacer
				  Escribir palabrasAdivinar[i] " "sinsaltar 
			  FinPara
			  Escribir " "
			  Escribir "Letras Utilizadas"
			  Para i<-1 hasta cantletras Con Paso 1 Hacer
				  Escribir Mayusculas(letrasUtilizadas[i]) ," " Sin Saltar
			  FinPara
			  Escribir " "
			  Escribir "PIERDES UNA VIDA"
			  Escribir "vidas:" intentos
		  SiNo
			  Si intentos=4 Entonces
				  Escribir " ----------+"
				  Escribir " |       (+.+)"
				  Escribir " |         |"
				  Escribir " |        "
				  Escribir " =    " Sin Saltar
				  Para i<-1 Hasta cantidad Con Paso 1 Hacer
					  Escribir palabrasAdivinar[i] " "sinsaltar 
				  FinPara
				  Escribir " "
				  Escribir "Letras Utilizadas"
				  Para i<-1 hasta cantletras Con Paso 1 Hacer
					  Escribir Mayusculas(letrasUtilizadas[i])," " Sin Saltar
				  FinPara
				  Escribir ""
				  Escribir "PIERDES UNA VIDA"
				  Escribir "vidas:" intentos
			  SiNo
				  Si intentos=3 Entonces
					  Escribir " ----------+"
					  Escribir " |       (+.+)"
					  Escribir " |        /|"
					  Escribir " |        "
					  Escribir " =    " Sin Saltar
					  Para i<-1 Hasta cantidad Con Paso 1 Hacer
						  Escribir palabrasAdivinar[i] " "sinsaltar 
					  FinPara
					  Escribir " "
					  Escribir "Letras Utilizadas"
					  Para i<-1 hasta cantletras Con Paso 1 Hacer
						  Escribir Mayusculas(letrasUtilizadas[i])," " Sin Saltar
					  FinPara
					  Escribir ""
					  Escribir "PIERDES UNA VIDA"
					  Escribir "vidas:" intentos
				  SiNo
					  Si intentos=2 Entonces
						  Escribir " ----------+"
						  Escribir " |       (+.+)"
						  Escribir " |        /|\"
						  Escribir " |         ´"
						  Escribir " =    " Sin Saltar
						  Para i<-1 Hasta cantidad Con Paso 1 Hacer
							  Escribir palabrasAdivinar[i] " "sinsaltar 
						  FinPara
						  Escribir " "
						  Escribir "Letras Utilizadas"
						  Para i<-1 hasta cantletras Con Paso 1 Hacer
							  Escribir Mayusculas(letrasUtilizadas[i])," " Sin Saltar
						  FinPara
						  Escribir " "
						  Escribir "PIERDES UNA VIDA "
						  Escribir "vidas:" intentos
					  SiNo
						  Si intentos=1 Entonces
							  Escribir " ----------+"
							  Escribir " |       (+.+)"
							  Escribir " |        /|\"
							  Escribir " |        /´\"
							  Escribir " =    " Sin Saltar
							  Para i<-1 Hasta cantidad Con Paso 1 Hacer
								  Escribir palabrasAdivinar[i] " "sinsaltar 
							  FinPara
							  Escribir " "
							  Escribir "Letras Utilizadas"
							  Para i<-1 hasta cantletras Con Paso 1 Hacer
								  Escribir Mayusculas(letrasUtilizadas[i])," " Sin Saltar
							  FinPara
							  Escribir ""
							  Escribir "PIERDES UNA VIDA"
							  Escribir "vidas:" intentos
						  FinSi
					  FinSi
				  FinSi
				  FinSi
			  FinSi
		  FinSi
	Escribir " "
		//se pide la letra para adivinar 
		Si aciertos<>cantidad y intentos<>0 Entonces
			Repetir
				Escribir "INGRESE UNA LETRA"
				Leer letra;
			Hasta Que Longitud(letra)=1 //control para que ingrese solo una letra 
		//se guarda la letra para ayudar al jugador a saber cual ya eligio 
			cantLetras=cantLetras+1 // numero de letras usadas
			letrasUtilizadas[cantletras]=letra // se guardan las letras en el arreglo
			sumador=0 //nos ayuda a saber si ninguna letra considio con el arreglo que contiene la palabraSecreta 
			correctas=0
		//recorremos el arreglo con la palabraSecreta en busca de coincidencias 
			Para i<-1 Hasta cantidad Con Paso 1 Hacer 
				Si letra=palabrasSecretas[i] Entonces // si coincide se guarda la letra en el arreglo y se elimina el "-"
					palabrasAdivinar[i]=letra
					correctas=correctas+1 // se suman la cantidad de aciertos 
				SiNo
					sumador=sumador+1 //suman las no considencias de cada letra
				Fin Si	
			Fin Para
			aciertos=aciertos+correctas // guardamos la cantidad de letras que se aciertan para no perder ese dato. 
			Si sumador=cantidad Entonces // si las no coinsidencias son igual la cantidad de letras quiere decir que la letra es incorrecta y no esta en el arreglo
				intentos=intentos-1 //se descuenta una vida 
			FinSi
		FinSi
		Limpiar Pantalla
	Hasta Que intentos=0 O	aciertos=cantidad-1 //esto se repetira hasta que te quedes sin intentos o coincidan todas las letras 
		Escribir "" 
		// ¿Ganaste o Perdiste?
		Si intentos=0 Entonces // te quedaste sin intentos y muestra la palabraSecreta 
			Escribir " ----------+"
			Escribir " |       (*.*)"
			Escribir " |        /|\"
			Escribir " |        /´\"
			Escribir " =    " Sin Saltar
			Para i<-1 Hasta cantidad Con Paso 1 Hacer
				Escribir palabrasAdivinar[i] " "sinsaltar 
			FinPara
			Escribir " "
			Escribir "============================== "
			Escribir "=      ¡¡¡AHORCADO!!!!       ="
			Escribir "=            :(              ="
			Escribir "============================== "
			Escribir "La palabra era: " Sin Saltar
			Para i<-1 Hasta cantidad Con Paso 1 Hacer
				Escribir Mayusculas(palabrasSecretas[i]) sinsaltar 
			FinPara
		FinSI
		Si aciertos=cantidad-1 Entonces // coincidiste con todas las pabras gana y muestra la cantidad de vidas que te quedaron 
			Escribir "=============================="
			Escribir "= !!FELICIDADES HAS GANADO¡¡ ="
			Escribir "=            :)              ="
			Escribir "=============================="
			
			Escribir "La palabra era: " Sin Saltar
			Para i<-1 Hasta cantidad Con Paso 1 Hacer
				Escribir Mayusculas(palabrasSecretas[i]) " " sinsaltar 
			finPara
			Escribir ""
			Escribir "vidas: " intentos;
		FinSi
		Escribir ""
		Escribir "       FIN DEL JUEGO"
 	
FinAlgoritmo
