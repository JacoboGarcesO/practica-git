Algoritmo DeterminarSiUnNumeroEsPrimo
	Definir Numero, esPrimo Como Entero;
	Escribir "Dame un numero, Porfavor";
	Leer numero;
	esPrimo <-1;
	Si numero <=1 Entonces
		esprimo <-0;
		Escribir "El Numero No Es Primo";
	SiNo
		Esprimo <- 1;
		Esprimo<- 1;
		Mientras Esprimo < 1 Hacer 
			Primo= Primo/1;
			x=x/1;
		FinMientras
		Escribir "El Numero Primo",numero," = ",esPrimo;
	FinSi
	
FinAlgoritmo
