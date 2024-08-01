// Leer un número y sumar todos los números pares que hayan entre 0 y el número ingresado.
// Entrada: El numero que ingresa el usuario.
// Proceso: Un ciclo que vaya desde 0 hasta el número ingresado.
//			Validar si el numero es par.
//			Agregar ese número a la suma.
// Salida: La suma de los pares.

Algoritmo SumarNumerosPares2
	Definir numero1, i, sumaPares Como Entero;
	Escribir "Ingrese un número para sumar los pares que esten antes, por favor:";
	Leer numero1;
	i = 0;
	sumaPares = 0;
	
	Mientras i <= numero1 Hacer
		sumaPares = sumaPares + i;
		i = i + 2;
	FinMientras
	
	Escribir "La suma de los pares que están entre 0 y ", numero1, " es:", sumaPares;
FinAlgoritmo
