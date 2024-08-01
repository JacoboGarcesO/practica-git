Algoritmo VectorPrimos
	Definir cantidadPrimos, numerosPrimos, contadorPrimos, numeroPrimoActual Como Entero;
	cantidadPrimos = leerCantidadPrimos();
	contadorPrimos = 0;
	numeroPrimoActual = 2;
	Dimension numerosPrimos[cantidadPrimos];
	
	Mientras (contadorPrimos < cantidadPrimos) Hacer
		numerosPrimos[contadorPrimos] = numeroPrimoActual;
		numeroPrimoActual = obtenerNumeroPrimo(numeroPrimoActual + 1);
		contadorPrimos = contadorPrimos + 1;
	FinMientras
	
	mostrarPrimos(numerosPrimos, cantidadPrimos);
FinAlgoritmo

Funcion numeroPrimo = obtenerNumeroPrimo(numeroPrimoAnterior)
	Definir numeroPrimo, i Como Entero;
	
	Para i = numeroPrimoAnterior Hasta 100 Hacer
		Si (verificarNumeroPrimo(i)) Entonces
			numeroPrimo = i;
			i = 100;
		FinSi
	FinPara
FinFuncion

Funcion cantidadPrimos = leerCantidadPrimos()
	Definir cantidadPrimos Como Entero;

	Repetir
		Escribir "Ingrese la cantidad de números primos que deseas: ";
		Leer cantidadPrimos;
		
		Si (cantidadPrimos <= 0) Entonces
			Escribir "El número ingresado debe ser mayor que 0.";
		FinSi
	Hasta Que cantidadPrimos > 0
FinFuncion

Funcion esPrimo = verificarNumeroPrimo(numeroPrimo)
	Definir esPrimo Como Logico;
	Definir i Como Entero;

	esPrimo = Verdadero;
	
	Para i = 2 Hasta numeroPrimo - 1 Hacer
		Si (numeroPrimo % i == 0) Entonces
			esPrimo = Falso;
			i = numeroPrimo - 1;
		FinSi
	FinPara
FinFuncion

Funcion mostrarPrimos(numerosPrimos, cantidadPrimos) 
	Definir i Como Entero;
	Para i = 0 Hasta cantidadPrimos - 1 Hacer
		Si (i == cantidadPrimos - 1) Entonces
			Escribir numerosPrimos[i];
		SiNo
			Escribir numerosPrimos[i], ", " Sin Saltar;
		FinSi
	FinPara
FinFuncion
	