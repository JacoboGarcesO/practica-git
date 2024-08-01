// Realizar un algoritmo para generar los primeros N términos de la secuencia Fibonacci.

Algoritmo SecuenciaFibonnaci
	Definir N Como Entero;
	N = leerN();
	mostrarSecuenciaFibonacci(N);
FinAlgoritmo

Funcion mostrarSecuenciaFibonacci(N)
	Definir numero1, numero2, i, resultado Como Entero;
	numero1 = 0;
	numero2 = 1;
	
	Escribir "1" Sin Saltar;
	Para i = 1 Hasta N - 1 Hacer
		resultado = numero1 + numero2;
		numero1 = numero2;
		numero2 = resultado;
		Escribir ", ", resultado Sin Saltar;
	FinPara
	Escribir "";
FinFuncion

Funcion N = leerN()
	Definir N Como Entero;
	
	Repetir
		Escribir "Ingrese el número de la secuencia que quiere ver: ";
		Leer N;
		
		Si (N < 1) Entonces
			Escribir "El número que quieres ver en la secuencia no existe, solo se admiten números superiores a 0.";
		FinSi
	Hasta Que N >= 1
FinFuncion
	