Algoritmo ahorcados
	Escribir " =============================="
	Escribir "      BIENVENIDO A AHORCADOS      "
	Escribir " =============================="
	Escribir ""
	Escribir "Ingrese la palabra para comenzar el juego"
	Leer palabraSecreta
	cantidad=Longitud(palabraSecreta)
	Dimension palabrasSecretas[100]
	Dimension palabrasAdivinar[100]
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		palabrasSecretas[i]=Subcadena(palabraSecreta,i,i)
		si i=1 Entonces
			palabrasAdivinar[i]=Subcadena(palabraSecreta,i,i)
		SiNo
			palabrasAdivinar[i]="_"
		FinSi
	Fin Para
	intentos=6
	
	correctas=0
	Repetir 
		si intentos=6 Entonces
			Escribir " ----------+"
		    Escribir " |        "
			Escribir " |        "
			Escribir " |        "
			escribir " |    " Sin Saltar
			Para i<-1 Hasta cantidad Con Paso 1 Hacer
			  Escribir palabrasAdivinar[i] " "sinsaltar 
		  finPara
	  SiNo
		  si intentos=5 Entonces
			  Escribir " ----------+"
			  Escribir " |       (+.+)"
			  Escribir " |         "
			  Escribir " |        "
			  escribir " |    " Sin Saltar
			  Para i<-1 Hasta cantidad Con Paso 1 Hacer
				  Escribir palabrasAdivinar[i] " "sinsaltar 
			  finPara
		  SiNo
			  si intentos=4 Entonces
				  Escribir " ----------+"
				  Escribir " |       (+.+)"
				  Escribir " |         |"
				  Escribir " |        "
				  escribir " =    " Sin Saltar
				  Para i<-1 Hasta cantidad Con Paso 1 Hacer
					  Escribir palabrasAdivinar[i] " "sinsaltar 
				  finPara
			  SiNo
				  si intentos=3 Entonces
					  Escribir " ----------+"
					  Escribir " |       (+.+)"
					  Escribir " |        /|"
					  Escribir " |        "
					  escribir " =    " Sin Saltar
					  Para i<-1 Hasta cantidad Con Paso 1 Hacer
						  Escribir palabrasAdivinar[i] " "sinsaltar 
					  finPara
				  SiNo
					  si intentos=2 Entonces
						  Escribir " ----------+"
						  Escribir " |       (+.+)"
						  Escribir " |        /|\"
						  Escribir " |         ´"
						  escribir " =    " Sin Saltar
						  Para i<-1 Hasta cantidad Con Paso 1 Hacer
							  Escribir palabrasAdivinar[i] " "sinsaltar 
						  finPara
					  SiNo
						  si intentos=1 Entonces
							  Escribir " ----------+"
							  Escribir " |       (+.+)"
							  Escribir " |        /|\"
							  Escribir " |        /´\"
							  escribir " =    " Sin Saltar
							  Para i<-1 Hasta cantidad Con Paso 1 Hacer
								  Escribir palabrasAdivinar[i] " "sinsaltar 
							  finPara
						  FinSi
					  FinSi
				  FinSi
				  FinSi
			  FinSi
		  FinSi
		  Escribir ""

		//Escribir " ----------+?"
		// Escribir " |       (+.+)"
		// Escribir " |        "
		// Escribir " |        /´\"
		// escribir " | " Sin Saltar
		//Para i<-1 Hasta cantidad Con Paso 1 Hacer
			//Escribir palabrasAdivinar[i] sinsaltar 
		//FinPara
		sumador=0
		    Escribir ""
			Escribir "INGRESE UNA LETRA"
			Leer letra;
			Para i<-1 Hasta cantidad Con Paso 1 Hacer
				Si letra=palabrasSecretas[i] Entonces
					palabrasAdivinar[i]=letra
				SiNo
					sumador=sumador+1
				Fin Si	
			Fin Para
			si sumador=cantidad Entonces
				intentos=intentos-1
				escribir "pierdes una vida"
			SiNo
				correcta=correcta+1
			FinSi
		Hasta Que intentos=0 O	correcta=cantidad
		Escribir ""
		si intentos=0 Entonces
			Escribir " ----------+"
			Escribir " |       (*.*)"
			Escribir " |        /|\"
			Escribir " |        /´\"
			escribir " =    " Sin Saltar
			Para i<-1 Hasta cantidad Con Paso 1 Hacer
				Escribir palabrasAdivinar[i] " "sinsaltar 
			finPara
			Escribir " "
			Escribir "¡¡¡AHORCADO!!!!"
			Escribir "     :(         "
		FinSI
		Escribir ""
		Escribir "fin del juego"
 

	
	
	

	
FinAlgoritmo
