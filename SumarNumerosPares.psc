// Leer un número y sumar todos los números pares que hayan entre 0 y el número ingresado.
// Entrada: El número.
// Proceso: Ciclo que vaya desde 0 hasta el número ingresado.
//			Validar si el valor de esos números es par.
//			Si es par, entonces añadirlo a la suma.
// Salida: La suma de los pares.
// 2 + 4 + 6 + 8 + 10 = 30

Algoritmo SumarNumerosPares
	Definir numero, i, sumaTotalPares Como Entero;
	Escribir "Ingrese un número, por favor: ";
	Leer numero;
	i = 0;
	sumaTotalPares = 0;
	
	Mientras i <= numero Hacer
		Si (i % 2 == 0) Entonces
			sumaTotalPares = sumaTotalPares + i;
		FinSi
		i = i + 1;
	FinMientras
	
	Escribir "La suma de los números pares desde 0 hasta el número ingresado es: ", sumaTotalPares;
FinAlgoritmo
