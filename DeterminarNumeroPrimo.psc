// Realizar un algoritmo que determine si un n�mero es primo.
// Entrada: El numero a validar.
// Proceso: Ciclo que recorra desde 1 hasta el numero.
//			Validar si el numero es divisible entre cada uno de sus anteriores y de ser as� aumentar la
//			cantidad de divisores.
// 			Si la cantidad de divisores es 2, entonces es primo, de lo contrario, pues no.
// Salida: Es primo o no.	

Algoritmo DeterminarNumeroPrimo
	Definir numero1 Como Entero;
	Definir esPrimo Como Logico;
	numero1 = obtenerNumero();
	esPrimo = determinarSiEsPrimo(numero1);	
	mostrarMensajes(esPrimo, numero1);
FinAlgoritmo

Funcion numero = obtenerNumero()
	Definir numero Como Entero;
	Escribir "Ingrese el n�mero para verficar si es primo, por favor: ";
	Leer numero;
FinFuncion

Funcion mostrarMensajes(esPrimo, numero1)
	Si (esPrimo) Entonces
		Escribir "El n�mero ", numero1, " es primo.";
	SiNo
		Escribir "El n�mero ", numero1, " no es primo.";
	FinSi
FinFuncion

Funcion esPrimo = determinarSiEsPrimo(numero1)
	Definir i Como Entero;
	Definir esPrimo Como Logico;
	esPrimo = Verdadero;
	Para i = 2 Hasta numero1 - 1 Con Paso 1 Hacer
		Si numero1 % i == 0 Entonces
			esPrimo = Falso;
			i = numero1 - 1;
		FinSi
	FinPara
FinFuncion
