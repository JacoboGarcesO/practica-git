// Leer un n�mero y sumar todos los n�meros pares que hayan entre 0 y el n�mero ingresado.
// Entrada: El n�mero.
// Proceso: Ciclo que vaya desde 0 hasta el n�mero ingresado.
//			Validar si el valor de esos n�meros es par.
//			Si es par, entonces a�adirlo a la suma.
// Salida: La suma de los pares.
// 2 + 4 + 6 + 8 + 10 = 30

Algoritmo SumarNumerosPares
	Definir numero, i, sumaTotalPares Como Entero;
	Escribir "Ingrese un n�mero, por favor: ";
	Leer numero;
	i = 0;
	sumaTotalPares = 0;
	
	Mientras i <= numero Hacer
		Si (i % 2 == 0) Entonces
			sumaTotalPares = sumaTotalPares + i;
		FinSi
		i = i + 1;
	FinMientras
	
	Escribir "La suma de los n�meros pares desde 0 hasta el n�mero ingresado es: ", sumaTotalPares;
FinAlgoritmo
