// Realizar un algoritmo que determine si un número es primo.
// Entrada: Numero.
// Proceso: Ciclo que vaya desde 1 hasta el número.
//			Verificar cuáles números dividen exactamente al número ingresado y aumentar el contador.
//			Si la cantidad de divisores es 2, pues es primo y sino, pues no.
// Salida: Obtener si el número es primo.

Algoritmo DeterminarSiEsPrimo
	Definir numero, i, cantidadDivisores Como Entero;
	Escribir "Ingrese el número a verificar, por favor: ";
	Leer numero;
	cantidadDivisores = 0;

	Para i = 1 Hasta numero Con Paso 1 Hacer
		Si numero % i == 0 Entonces
			cantidadDivisores = cantidadDivisores + 1;
		FinSi
	FinPara
	
	Si (cantidadDivisores == 2) Entonces
		Escribir "El número ", numero, " es primo.";
	SiNo
		Escribir "El número ", numero, " no es primo.";
	FinSi
FinAlgoritmo
